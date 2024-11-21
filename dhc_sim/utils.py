import os
import re
from typing import List, Tuple, Optional, Dict
from shapely.geometry import Point, Polygon, MultiPolygon
from lxml import etree
import geopandas as gpd
from pyproj import Transformer, CRS

def extract_crs_from_gml(gml_file: str) -> str:
    """
    Extract the CRS from a GML file.

    Args:
        gml_file (str): Path to the GML file

    Returns:
        str: EPSG code of the CRS
    """
    try:
        tree = etree.parse(gml_file)
        root = tree.getroot()
        
        srs_elements = root.xpath(".//*[@srsName]")
        
        if srs_elements:
            srs_name = srs_elements[0].get('srsName')
            if 'EPSG' in srs_name:
                epsg_code = srs_name.split('EPSG')[-1].strip(':/').strip()
                return f"EPSG:{epsg_code}"
                
        print("Warning: Could not find CRS in GML file, using default EPSG:31256")
        return "EPSG:31256"
        
    except Exception as e:
        print(f"Error extracting CRS: {e}")
        return "EPSG:31256"

def transform_coordinates(coords: List[Tuple[float, float]], 
                        source_crs: str) -> List[Tuple[float, float]]:
    """
    Transform coordinates from source CRS to WGS84.

    Args:
        coords (List[Tuple[float, float]]): List of coordinate pairs
        source_crs (str): Source coordinate reference system

    Returns:
        List[Tuple[float, float]]: Transformed coordinates in WGS84
    """
    transformer = Transformer.from_crs(source_crs, "EPSG:4326", always_xy=True)
    return [transformer.transform(x, y) for x, y in coords]

def extract_ground_surfaces(surface_elem: etree.Element, 
                          namespaces: Dict[str, str]) -> Optional[List[Tuple[float, float]]]:
    """
    Extract coordinates from a ground surface element.
    Supports different GML coordinate representations and handles 3D coordinates.

    Args:
        surface_elem (etree.Element): Ground surface XML element
        namespaces (Dict[str, str]): XML namespaces

    Returns:
        Optional[List[Tuple[float, float]]]: List of coordinate pairs (x,y)
    """
    try:
        # Try different possible paths for coordinate lists
        pos_list = surface_elem.find('.//gml:posList', namespaces)
        if pos_list is None:
            pos_list = surface_elem.find('.//gml:exterior//gml:posList', namespaces)
        if pos_list is None:
            pos_list = surface_elem.find('.//gml:Polygon//gml:posList', namespaces)
            
        if pos_list is not None and pos_list.text:
            coords_str = pos_list.text.strip().split()
            # Convert coordinates, taking every third value (x,y,z)
            coords = []
            for i in range(0, len(coords_str), 3):
                if i + 1 < len(coords_str):  # Ensure we have at least x and y
                    x = float(coords_str[i])
                    y = float(coords_str[i + 1])
                    coords.append((x, y))
            return coords if coords else None
        return None
    except Exception as e:
        print(f"Error extracting coordinates: {str(e)}")
        return None

def create_building_footprint(building_elem: etree.Element, 
                            namespaces: Dict[str, str],
                            source_crs: str) -> Optional[Polygon]:
    """
    Create a footprint polygon from building ground surfaces.

    Args:
        building_elem (etree.Element): Building XML element
        namespaces (Dict[str, str]): XML namespaces
        source_crs (str): Source coordinate reference system

    Returns:
        Optional[Polygon]: Building footprint in WGS84
    """
    ground_surfaces = building_elem.findall('.//bldg:GroundSurface', namespaces)
    if not ground_surfaces:
        return None

    polygons = []
    for surface in ground_surfaces:
        coords = extract_ground_surfaces(surface, namespaces)
        if coords and len(coords) >= 3:  # Need at least 3 points for a polygon
            # Transform coordinates to WGS84
            wgs84_coords = transform_coordinates(coords, source_crs)
            try:
                # Ensure the polygon is closed
                if wgs84_coords[0] != wgs84_coords[-1]:
                    wgs84_coords.append(wgs84_coords[0])
                
                poly = Polygon(wgs84_coords)
                if poly.is_valid:
                    polygons.append(poly)
            except Exception as e:
                print(f"Error creating polygon: {str(e)}")
                continue

    if not polygons:
        return None

    try:
        # Combine multiple ground surfaces if present
        if len(polygons) == 1:
            return polygons[0]
        else:
            # Create a union of all valid polygons
            result = polygons[0]
            for poly in polygons[1:]:
                result = result.union(poly)
            return result if isinstance(result, (Polygon, MultiPolygon)) else None
    except Exception as e:
        print(f"Error combining polygons: {str(e)}")
        return None

def create_gdf_from_buildings(buildings: List[etree.Element], 
                            namespaces: Dict[str, str],
                            source_crs: str) -> gpd.GeoDataFrame:
    """
    Create a GeoDataFrame from buildings with footprints and centroids.

    Args:
        buildings (List[etree.Element]): List of building XML elements
        namespaces (Dict[str, str]): XML namespaces
        source_crs (str): Source coordinate reference system

    Returns:
        gpd.GeoDataFrame: GeoDataFrame with building footprints and centroids
    """
    data = []
    
    for building in buildings:
        try:
            building_id = building.get(f"{{{namespaces['gml']}}}id")
            building_name = building.find(f"{{{namespaces['gml']}}}name")
            
            # Create footprint polygon (already in WGS84)
            footprint = create_building_footprint(building, namespaces, source_crs)
            
            if footprint and footprint.is_valid:
                data.append({
                    'id': building_id,
                    'name': building_name.text,
                    'element': building,
                    'geometry': footprint,
                    'centroid': footprint.centroid
                })
            else:
                print(f"Invalid or missing footprint for building {building_id}")
                
        except Exception as e:
            print(f"Error processing building {building_id}: {e}")
            continue
    
    if not data:
        raise ValueError("No valid buildings found to create GeoDataFrame")
    
    # Create GeoDataFrame with WGS84 CRS
    gdf = gpd.GeoDataFrame(data, crs="EPSG:4326", geometry='geometry')
    return gdf

def find_files_by_extension(directory_path, extension):
    """
    Recursively searches a directory for files with a specific extension.
    
    Args:
        directory_path (str): Path to search
        extension (str): File extension (e.g. '.txt', '.pdf')
        
    Returns:
        list: List of dictionaries containing filename and full path
    """
    if not extension.startswith('.'):
        extension = '.' + extension
        
    result = []
    
    try:
        for root, _, files in os.walk(directory_path):
            for file in files:
                if file.endswith(extension):
                    result.append({
                        'file_name': file,
                        'path': os.path.join(root, file)
                    })
    except Exception as e:
        print(f"Error searching directory: {str(e)}")
        
    return result

def find_files_by_end_of_filename(directory_path, end):
    """
    Recursively searches a directory for files with a specific end of filename.
    
    Args:
        directory_path (str): Path to search
        end (str): End of filename
        
    Returns:
        list: List of dictionaries containing filename and full path
    """
       
    result = []
    
    try:
        for root, _, files in os.walk(directory_path):
            for file in files:
                if file.endswith(end):
                    result.append({
                        'file_name': file,
                        'path': os.path.join(root, file)
                    })
    except Exception as e:
        print(f"Error searching directory: {str(e)}")
        
    return result

def convert_bldg_name_to_teaser_bldg_name(original_name):
    """
    Converts a building name into a standardized format by removing special characters,
    replacing umlauts, and adding a 'B' prefix.
    
    Args:
        original_name (str): The original building name
        
    Returns:
        str: The cleaned name
    """
    # Dictionary for German umlauts and special characters
    umlaut_map = {
        'ä': '',
        'ö': '',
        'ü': '',
        'Ä': '',
        'Ö': '',
        'Ü': '',
        'ß': ''
    }
    
    # Clean the name
    cleaned_name = original_name
    
    # Replace umlauts
    for umlaut, replacement in umlaut_map.items():
        cleaned_name = cleaned_name.replace(umlaut, replacement)
    
    # Remove all characters that are not letters, numbers, or underscores
    cleaned_name = re.sub(r'[^\w\s-]', '', cleaned_name)
    
    # Remove spaces and hyphens
    cleaned_name = cleaned_name.replace(' ', '').replace('-', '')
    
    # Add "B" prefix
    cleaned_name = 'B' + cleaned_name
    
    return cleaned_name

def compare_building_names(prj, gdf):
    """
    Compares building names between project buildings and GeoDataFrame
    
    Args:
        prj: TEASER project instance containing buildings
        gdf: GeoDataFrame with building names in 'name' column
        
    Returns:
        int: Number of matching buildings
    """
    # Get lists of names
    prj_names = [building.name for building in prj.buildings]
    gdf_names = gdf['name'].tolist()
    
    # Count matches
    matches = sum(1 for name in prj_names if name in gdf_names)
    
    print(f"Found {matches} matching buildings out of {len(prj_names)} project buildings")

def add_heat_load_to_gdf(gdf, buildings):
    """
    Adds heat load values from building objects to GeoDataFrame based on matching names.
    
    Parameters:
    -----------
    gdf : GeoDataFrame
        GeoDataFrame containing building footprints with 'name' column
    buildings : list
        List of building objects with attributes 'name' and 'sum_heat_load'
    
    Returns:
    --------
    GeoDataFrame
        Original GeoDataFrame with additional 'heat_load' column
    """
    # Create new column with default value 0
    gdf['heat_load'] = 0
    
    # Create dictionary for faster lookup
    heat_loads = {bldg.name: round(bldg.sum_heat_load) for bldg in buildings}
    
    # Add heat loads where names match
    for idx, row in gdf.iterrows():
        if row['name'] in heat_loads:
            gdf.at[idx, 'heat_load'] = heat_loads[row['name']]
    
    return gdf
