"""
Network processing for district heating systems.

Provides functionality to create and manipulate network graphs for district heating,
including street networks, building connections, and preparation for simulation.
"""

import osmnx as ox
import networkx as nx
from geopandas import GeoDataFrame
from networkx import MultiDiGraph
from shapely.geometry import Point, LineString
from pyproj import Transformer
import shapely
from uesgraphs.uesgraph import UESGraph


class NetworkProcessor:
    """
    Process and transform network graphs for district heating systems.
    
    Handles the creation of street networks, addition of building connections,
    and preparation of networks for simulation in Modelica.
    Args:
        buildings_gdf: GeoDataFrame containing building information and geometries
    """
    
    def __init__(self, buildings_gdf: GeoDataFrame):
        """
        Initialize network processor with building data.

        Args:
            buildings_gdf: GeoDataFrame containing building information and geometries
        """
        self.buildings = buildings_gdf
        self.street_graph = None
        self.mst = None
        self.mst_with_bldg = None
        self.ues_graph = UESGraph()
        self.supply_node_id = None
        
    def set_supply_node(self, node_id: str):
        """
        Set the supply node ID for the network.

        Args:
            node_id: ID of the supply node
        """
        self.supply_node_id = node_id
        return self
        
    def create_street_network(self, wkt_string: str) -> MultiDiGraph:
        """
        Create street network from WKT polygon.

        Args:
            wkt_string: WKT string in EPSG:3857 projection
            
        Returns:
            Created street network graph
        """
        ox.settings.use_cache = True
        ox.settings.log_console = True
        ox.settings.all_oneway = True
        
        polygon = shapely.wkt.loads(wkt_string)
        transformer = Transformer.from_crs("EPSG:3857", "EPSG:4326", always_xy=True)
        polygon_wgs84 = shapely.ops.transform(transformer.transform, polygon)
        
        graph_directed = ox.graph_from_polygon(
            polygon=polygon_wgs84,
            network_type="all"
        )
        
        self.street_graph = ox.convert.to_undirected(graph_directed)
        return self
        
    def add_building_access(self) -> MultiDiGraph:
        """
        Add building access nodes to street network.
        
        Returns:
            Graph with added building access nodes
        """
        if self.street_graph is None:
            raise ValueError("Street network must be created first")
            
        graph = self.street_graph.copy()
        successful_additions = 0
        
        for building in self.buildings.itertuples():
            try:
                building_point = Point(building.centroid.x, building.centroid.y)
                u, v, key = ox.distance.nearest_edges(graph, [building.centroid.x], [building.centroid.y])[0]
                
                edge_data = graph[u][v][key]
                if 'geometry' not in edge_data:
                    start_point = Point(graph.nodes[u]['x'], graph.nodes[u]['y'])
                    end_point = Point(graph.nodes[v]['x'], graph.nodes[v]['y'])
                    edge_data['geometry'] = LineString([start_point, end_point])
                
                edge_geom = edge_data['geometry']
                nearest_point = shapely.ops.nearest_points(edge_geom, building_point)[0]
                
                new_node_id = f"building_access_{building.name}"
                graph.add_node(
                    new_node_id,
                    x=nearest_point.x,
                    y=nearest_point.y,
                    geometry=nearest_point,
                    name=f"building_access_{building.name}"
                )
                
                split_distance = edge_geom.project(nearest_point)
                line1 = shapely.ops.substring(edge_geom, 0, split_distance)
                line2 = shapely.ops.substring(edge_geom, split_distance, edge_geom.length)
                
                attrs1 = edge_data.copy()
                attrs2 = edge_data.copy()
                attrs1.update({'geometry': line1, 'length': line1.length})
                attrs2.update({'geometry': line2, 'length': line2.length})
                
                graph.remove_edge(u, v, key)
                graph.add_edge(u, new_node_id, **attrs1)
                graph.add_edge(new_node_id, v, **attrs2)
                
                successful_additions += 1
                
            except Exception as e:
                print(f"Error processing building {building.name}: {str(e)}")
                continue
        
        print(f"\nAdded {successful_additions} of {len(self.buildings)} access nodes")
        self.street_graph = graph
        return self
        
    def create_minimum_spanning_tree(self) -> MultiDiGraph:
        """
        Create minimum spanning tree including building connections and convert to directed graph.
        Requires supply_node_id to be set first using set_supply_node().
        
        Returns:
            Minimum spanning tree graph (directed)
            
        Raises:
            ValueError: If supply_node_id is not set or street network is not created
        """
        if self.street_graph is None:
            raise ValueError("Street network with building access must be created first")
            
        try:
            if self.supply_node_id is None:
                raise ValueError("Supply node must be set first using set_supply_node()")
                
            G = nx.Graph(self.street_graph)
            original_nodes = list(G.nodes())
            building_ids = []
            
            # Add buildings to graph and connect to nearest nodes
            for idx, building in self.buildings.iterrows():
                building_id = building['name']
                building_ids.append(building_id)
                G.add_node(building_id, x=building.centroid.x, y=building.centroid.y)
                
                distances = {
                    node: Point((G.nodes[node]['x'], G.nodes[node]['y'])).distance(building.centroid)
                    for node in original_nodes
                }
                nearest_node = min(distances, key=distances.get)
                G.add_edge(building_id, nearest_node, length=distances[nearest_node])
            
            # Create minimum spanning tree
            mst = nx.minimum_spanning_tree(G, weight='length')
            
            self.mst_with_bldg = mst
            
            # Create directed graph
            digraph = nx.DiGraph()
            
            # Copy all nodes with their attributes
            for node, data in mst.nodes(data=True):
                digraph.add_node(node, **data)
            
            # Create undirected graph for path calculation
            undirected = mst.to_undirected()
            
            # Calculate paths from supply node to all other nodes
            paths = nx.single_source_shortest_path(undirected, self.supply_node_id)
            
            # Sort paths by length to process shorter paths first
            sorted_paths = sorted(paths.items(), key=lambda x: len(x[1]))
            
            # Add edges in the direction from supply to endpoints
            added_edges = set()
            for target, path in sorted_paths:
                if target == self.supply_node_id:
                    continue
                
                # Add edges along the path
                for i in range(len(path) - 1):
                    u, v = path[i], path[i + 1]
                    if (u, v) not in added_edges and (v, u) not in added_edges:
                        digraph.add_edge(u, v)
                        added_edges.add((u, v))
            
            # Remove building nodes after directed graph creation
            for building_id in building_ids:
                digraph.remove_node(building_id)
            
            G_final = MultiDiGraph(digraph)
            G_final.graph['crs'] = self.street_graph.graph['crs']
            self.mst = G_final
            
            return self
            
        except ValueError as e:
            print(f"Error creating minimum spanning tree: {str(e)}")
            raise
        except Exception as e:
            print(f"Unexpected error creating minimum spanning tree: {str(e)}")
            raise

    def add_street_network_to_ues(self):
        """
        Adds street nodes and edges to UES graph.
        
        Returns:
            self for method chaining
        """
        ues_graph = self.ues_graph
        street_graph = self.street_graph
        
        # Convert OSMnx graph to undirected to handle bidirectional streets
        G_undirected = street_graph.to_undirected()
        
        # Convert to GeoDataFrames
        nodes, edges = ox.graph_to_gdfs(G_undirected)
        
        # Dictionary for node mapping
        node_mapping = {}
        
        # First add all nodes
        for osm_node_id, node_data in nodes.iterrows():
            # Add node and store its ID
            ues_node_id = ues_graph.add_street_node(position=node_data.geometry)
            node_mapping[osm_node_id] = ues_node_id
        
        # Then add all edges from the original edges GeoDataFrame
        for idx, edge_data in edges.iterrows():
            # Get source and target nodes from index
            osm_u, osm_v = idx[0], idx[1]  # MultiIndex contains (u, v, key)
            
            # Convert to UES node IDs
            ues_u = node_mapping[osm_u]
            ues_v = node_mapping[osm_v]
            
            # Add edge
            ues_graph.add_edge(ues_u, ues_v)
            
        self.ues_graph = ues_graph
        
        return self

    def add_heating_network_to_ues(self, network_type = 'heating', network_id = 'default'):
        """
        Adds heating network nodes and edges to UES graph.
        
        Args:
            network_type: Type of the network (default is 'heating')
            network_id: ID of the network (default is 'default')
        
        Returns:
            self for method chaining
        """
        ues_graph = self.ues_graph
        mst = self.mst
        
        # Convert nodes to GeoDataFrame to get positions
        nodes, edges = ox.graph_to_gdfs(mst)
        
        # Dictionary to store mapping between OSMnx and UES node IDs
        node_mapping = {}
        
        # Add all nodes first
        for osm_node_id, node_data in nodes.iterrows():
            # Get position from geometry
            position = node_data.geometry
            name = node_data.name
            
            # Add network node to UES graph
            ues_node_id = ues_graph.add_network_node(
                network_type=network_type,
                network_id=network_id,
                position=position,
                check_overlap=True,
                name=name
            )
            
            # Store mapping
            node_mapping[osm_node_id] = ues_node_id
        
        # Add all edges
        for _, edge_data in edges.iterrows():
            # Get source and target nodes
            osm_u = edge_data.name[0]  # First element of MultiIndex
            osm_v = edge_data.name[1]  # Second element of MultiIndex
            
            # Get corresponding UES node IDs
            ues_u = node_mapping[osm_u]
            ues_v = node_mapping[osm_v]
            
            # Add edge to UES graph
            ues_graph.add_edge(ues_u, ues_v)
        
        self.graph = ues_graph
        
        return self

    def add_buildings_to_ues(self):
        """
        Adds buildings to UES graph.
        
        Returns:
            self for method chaining
        """
        ues_graph = self.ues_graph
        buildings = self.buildings
        building_ids = []
        
        for idx, row in buildings.iterrows():
            # Extract name (if exists, else None)
            name = row.get('name', None)
            
            # Get centroid as position
            position = row.geometry.centroid
            
            # Create attr_dict with heat_load
            attr_dict = {'heat_load': row.get('heat_load', None)}
            
            # Add building to graph
            building_id = ues_graph.add_building(
                name=name,
                position=position,
                attr_dict=attr_dict
            )
            
            building_ids.append(building_id)
        
        self.ues_graph = ues_graph
        
        return self

    def connect_buildings_to_heating_network(self):
        """
        Connects each building node to its nearest heating network node in the UES graph
        using direct distance calculation between points.
        
        Returns:
            self for method chaining
        """
        ues_graph = self.ues_graph
        
        # Get building and heating nodes using UES graph built-in functions
        building_nodes = ues_graph.nodelist_building
        heating_nodes = ues_graph.nodelists_heating['default']
        
        for building_id in building_nodes:
            # Get building position
            building_pos = ues_graph.nodes[building_id]['position']
            
            nearest_node = None
            min_distance = float('inf')
            
            # Find nearest heating network node
            for heating_node in heating_nodes:
                heating_pos = ues_graph.nodes[heating_node]['position']
                
                # Calculate distance between points
                distance = building_pos.distance(heating_pos)
                
                if distance < min_distance:
                    min_distance = distance
                    nearest_node = heating_node
            
            # Add edge between building and nearest heating node
            if nearest_node is not None:
                ues_graph.add_edge(nearest_node, building_id)
                
        self.ues_graph = ues_graph
        
        return self
        
    def convert_to_ues_graph(self):
        """
        Convert network to UESGraph format.
        """
        if self.street_graph is None:
            raise ValueError("Network graph must exist")
            
        # Implementation depends on UESGraph specifics
        raise NotImplementedError("UESGraph conversion to be implemented")
        
    def prepare_for_modelica(self, width_set: float = 400):
        """
        Convert network positions for Modelica export.

        Args:
            width_set: Width of Modelica canvas
        """
        if self.ues_graph is None:
            raise ValueError("UESGraph must be created first")
            
        width_before = self.ues_graph.max_position.x - self.ues_graph.min_position.x
        height_before = self.ues_graph.max_position.y - self.ues_graph.min_position.y
        height_after = width_set / width_before * height_before

        for node in self.ues_graph.nodes():
            dx = self.ues_graph.node[node]["position"].x - self.ues_graph.min_position.x
            dy = self.ues_graph.node[node]["position"].y - self.ues_graph.min_position.y
            x_new = dx / width_before * width_set
            y_new = dy / height_before * height_after
            self.ues_graph.node[node]["position"] = Point(x_new, y_new)

        self.ues_graph.min_position = Point(0, 0)
        self.ues_graph.max_position = Point(width_set, height_after)
