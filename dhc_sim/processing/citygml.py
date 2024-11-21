"""
CityGML processing for district heating simulations.

Provides functionality to process CityGML files, including:
- Address management and geocoding
- Building footprint extraction
- Coordinate transformations
"""

from typing import List, Tuple, Optional, Dict
from lxml import etree
import requests
import geopandas as gpd
from shapely.geometry import Point, Polygon, MultiPolygon
from pyproj import Transformer, CRS
from ..utils import (
    extract_crs_from_gml,
    create_gdf_from_buildings,
    extract_ground_surfaces
)

class AddressManager:
    """
    Manage address operations with caching for CityGML processing.
    """
    
    def __init__(self):
        """Initialize address manager with default settings."""
        self.nominatim_url = 'https://nominatim.openstreetmap.org/reverse'
        self.user_agent = 'DHC-Sim/1.0'
        self._address_cache = {}

    def get_address(self, lat: float, lon: float) -> Dict[str, str]:
        """
        Get address information for coordinates using OSM Nominatim.

        Args:
            lat: Latitude in WGS84
            lon: Longitude in WGS84

        Returns:
            Dictionary with address details
        """
        if not (-90 <= lat <= 90) or not (-180 <= lon <= 180):
            print(f"Warning: Invalid coordinates: Lat={lat}, Lon={lon}")
            return {}

        cache_key = f"{round(lat, 6)},{round(lon, 6)}"
        if cache_key in self._address_cache:
            return self._address_cache[cache_key]

        params = {
            'format': 'json',
            'lat': lat,
            'lon': lon,
            'addressdetails': 1
        }
        headers = {'User-Agent': self.user_agent}
        
        try:
            response = requests.get(self.nominatim_url, params=params, headers=headers)
            response.raise_for_status()
            address = response.json().get('address', {})
            self._address_cache[cache_key] = address
            return address
        except requests.RequestException as e:
            print(f"Error getting address: {e}")
            return {}

    def translate_address(self, osm_address: Dict[str, str]) -> Dict[str, str]:
        """
        Translate OSM address format to xAL format.

        Args:
            osm_address: Dictionary with OSM address data

        Returns:
            Dictionary with xAL format address data
        """
        translation = {
            'city': 'LocalityName',
            'country': 'CountryName',
            'house_number': 'ThoroughfareNumber',
            'postcode': 'PostalCodeNumber',
            'road': 'ThoroughfareName'
        }
        
        xAL_address = {}
        for osm_key, xAL_key in translation.items():
            value = osm_address.get(osm_key)
            if value:
                xAL_address[xAL_key] = value
        return xAL_address

class GMLProcessor:
    """
    Process CityGML files for district heating simulations.
    Args:
        gml_file: Path to CityGML file
    """
    
    def __init__(self, gml_file: str):
        """
        Initialize GML processor.

        Args:
            gml_file: Path to CityGML file
        """
        self.gml_file = gml_file
        parser = etree.XMLParser(remove_blank_text=True)
        self.tree = etree.parse(gml_file, parser)
        self.root = self.tree.getroot()
        self.namespaces = self._extract_namespaces()
        self.address_manager = AddressManager()
        self.source_crs = extract_crs_from_gml(gml_file)

    def _extract_namespaces(self) -> Dict[str, str]:
        """Extract namespaces from GML file."""
        namespaces = {}
        for event, elem in etree.iterparse(self.gml_file, events=('start-ns',)):
            prefix, uri = elem
            if prefix in namespaces and namespaces[prefix] != uri:
                print(f"Warning: Duplicate namespace '{prefix}'")
            namespaces[prefix] = uri
        return namespaces

    def get_buildings(self) -> List[etree.Element]:
        """Get all buildings from GML file."""
        return self.root.findall('.//bldg:Building', self.namespaces)

    def update_building_name(self, building_elem: etree.Element, lat: float, lon: float) -> None:
        """
        Update building name with address information.

        Args:
            building_elem: Building XML element
            lat: Building latitude
            lon: Building longitude
        """
        address = self.address_manager.get_address(lat, lon)
        
        postcode = address.get('postcode', '')
        street = address.get('road', '')
        house_number = address.get('house_number', '')
        
        for existing_name in building_elem.findall(f".//{{{self.namespaces['gml']}}}name"):
            existing_name.text = f"{postcode}, {street} {house_number}"

    def update_duplicate_building_name(self):
        """Update duplicate building names with unique suffixes."""
        building_names = self.root.findall(f".//{{{self.namespaces['gml']}}}name")
        names_list = []

        for name in building_names:
            names_list.append(name.text)

        for i, name in enumerate(names_list):
            totalcount = names_list.count(name)
            count = names_list[:i].count(name)
            if totalcount > 1 and name == building_names[i].text:
                new_name = name + "_" + str(count + 1)
                building_names[i].text = new_name

    def process_building(self, building_id: str, lat: float, lon: float, 
                        building_elem: etree.Element) -> None:
        """
        Process a single building.

        Args:
            building_id: Building identifier
            lat: Building latitude
            lon: Building longitude
            building_elem: Building XML element
        """
        osm_address = self.address_manager.get_address(lat, lon)
        self.update_building_name(building_elem, lat, lon)
        xAL_address = self.address_manager.translate_address(osm_address)
        self._add_address_to_building(building_elem, xAL_address)

    def _add_address_to_building(self, building_elem: etree.Element, xAL_address: Dict[str, str]):
        """Add xAL address to building element."""
        for existing_address in building_elem.findall(f".//{{{self.namespaces['bldg']}}}address"):
            building_elem.remove(existing_address)

        address_elem = etree.SubElement(building_elem, f"{{{self.namespaces['bldg']}}}address")
        core_address = etree.SubElement(address_elem, 'Address')
        xal_address = etree.SubElement(core_address, "xalAddress")
        address_details = etree.SubElement(xal_address, f"{{{self.namespaces['xAL']}}}AddressDetails")

        if 'CountryName' in xAL_address:
            country = etree.SubElement(address_details, f"{{{self.namespaces['xAL']}}}Country")
            country_name = etree.SubElement(country, f"{{{self.namespaces['xAL']}}}CountryName")
            country_name.text = xAL_address['CountryName']

            if 'LocalityName' in xAL_address:
                locality = etree.SubElement(country, f"{{{self.namespaces['xAL']}}}Locality", Type="City")
                locality_name = etree.SubElement(locality, f"{{{self.namespaces['xAL']}}}LocalityName")
                locality_name.text = xAL_address['LocalityName']

                if 'ThoroughfareName' in xAL_address or 'ThoroughfareNumber' in xAL_address:
                    thoroughfare = etree.SubElement(locality, f"{{{self.namespaces['xAL']}}}Thoroughfare", Type="Street")
                    
                    if 'ThoroughfareNumber' in xAL_address:
                        number_elem = etree.SubElement(thoroughfare, f"{{{self.namespaces['xAL']}}}ThoroughfareNumber")
                        number_elem.text = xAL_address['ThoroughfareNumber']
                    
                    if 'ThoroughfareName' in xAL_address:
                        name_elem = etree.SubElement(thoroughfare, f"{{{self.namespaces['xAL']}}}ThoroughfareName")
                        name_elem.text = xAL_address['ThoroughfareName']

                if 'PostalCodeNumber' in xAL_address:
                    postal_elem = etree.SubElement(locality, f"{{{self.namespaces['xAL']}}}PostalCode")
                    code_elem = etree.SubElement(postal_elem, f"{{{self.namespaces['xAL']}}}PostalCodeNumber")
                    code_elem.text = xAL_address['PostalCodeNumber']

    def process_all_buildings(self) -> Tuple[int, int]:
        """
        Process all buildings in the GML file.

        Returns:
            Tuple of (successful_buildings, failed_buildings)
        """
        buildings = self.get_buildings()
        print(f"Found {len(buildings)} buildings")
        
        print("Creating GeoDataFrame and calculating building footprints...")
        gdf = create_gdf_from_buildings(buildings, self.namespaces, self.source_crs)
        print(f"Created GeoDataFrame with {len(gdf)} rows")
        
        successful_buildings = 0
        failed_buildings = 0
        
        for idx, row in gdf.iterrows():
            try:
                print(f"Processing building {idx + 1}/{len(gdf)}")
                lat, lon = row['centroid'].y, row['centroid'].x
                
                building_elem = self.root.find(
                    f".//bldg:Building[@gml:id='{row['id']}']",
                    self.namespaces
                )
                
                if building_elem is not None:
                    self.process_building(
                        building_id=row['id'],
                        lat=lat,
                        lon=lon,
                        building_elem=building_elem
                    )
                    successful_buildings += 1
                else:
                    print(f"Building element not found: {row['id']}")
                    failed_buildings += 1
                
            except Exception as e:
                print(f"Error processing building {row['id']}: {e}")
                failed_buildings += 1
                continue
        
        self.update_duplicate_building_name()
        return successful_buildings, failed_buildings

    def save(self, output_path: str):
        """
        Save processed CityGML file.

        Args:
            output_path: Path to save the file
        """
        self.tree.write(
            output_path,
            pretty_print=True,
            xml_declaration=True,
            encoding='UTF-8'
        )
        print(f"\nNew CityGML file saved as '{output_path}'.")
