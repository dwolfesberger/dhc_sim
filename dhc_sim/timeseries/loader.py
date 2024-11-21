"""
Time series data loading for district heating simulations.

This module provides functionality to load and manage time series data from CSV files
for ground temperatures, supply temperatures, and heat input profiles.
"""

import pandas as pd
from pathlib import Path
from typing import Dict, List, Optional, Union

class TimeseriesLoader:
    """
    Loads and manages time series data for district heating simulations.
    
    This class handles loading and accessing time series data from CSV files for:
    - Ground temperatures
    - Supply temperatures
    - Heat input profiles
    
    Attributes:
        ground_temp_data (pd.DataFrame): Ground temperature time series
        supply_temp_data (pd.DataFrame): Supply temperature time series
        heat_input_data (pd.DataFrame): Heat input time series for multiple points
    """
    
    def __init__(self):
        """Initialize an empty TimeseriesLoader instance."""
        self.ground_temp_data: Optional[pd.DataFrame] = None
        self.supply_temp_data: Optional[pd.DataFrame] = None
        self.heat_input_data: Optional[pd.DataFrame] = None
    
    def load_ground_temperature(self, filepath: Union[str, Path]) -> None:
        """
        Load ground temperature data from a CSV file.
        
        Args:
            filepath: Path to the CSV file containing ground temperature data.
                    Expected columns: 'time', 'temperature'
        
        Raises:
            ValueError: If the CSV file doesn't have the expected columns
            FileNotFoundError: If the file doesn't exist
        """
        df = pd.read_csv(filepath)
        required_cols = ['time', 'temperature']
        
        if not all(col in df.columns for col in required_cols):
            raise ValueError(
                f"Ground temperature CSV must contain columns: {required_cols}"
            )
        
        self.ground_temp_data = df
    
    def load_supply_temperature(self, filepath: Union[str, Path]) -> None:
        """
        Load supply temperature data from a CSV file.
        
        Args:
            filepath: Path to the CSV file containing supply temperature data.
                    Expected columns: 'time', 'temperature'
        
        Raises:
            ValueError: If the CSV file doesn't have the expected columns
            FileNotFoundError: If the file doesn't exist
        """
        df = pd.read_csv(filepath)
        required_cols = ['time', 'temperature']
        
        if not all(col in df.columns for col in required_cols):
            raise ValueError(
                f"Supply temperature CSV must contain columns: {required_cols}"
            )
        
        self.supply_temp_data = df
    
    def load_heat_input(self, filepath: Union[str, Path]) -> None:
        """
        Load heat input data from a CSV file.
        
        Args:
            filepath: Path to the CSV file containing heat input data.
                    Expected columns: 'time' and at least one point column
        
        Raises:
            ValueError: If the CSV file doesn't have the expected format
            FileNotFoundError: If the file doesn't exist
        """
        df = pd.read_csv(filepath)
        
        if 'time' not in df.columns:
            raise ValueError("Heat input CSV must contain a 'time' column")
        
        if len(df.columns) < 2:
            raise ValueError(
                "Heat input CSV must contain 'time' and at least one point column"
            )
        
        self.heat_input_data = df
    
    def get_ground_temperature(self) -> List[float]:
        """
        Get the ground temperature time series.
        
        Returns:
            List of ground temperatures
            
        Raises:
            RuntimeError: If ground temperature data hasn't been loaded
        """
        if self.ground_temp_data is None:
            raise RuntimeError("Ground temperature data not loaded")
        
        return self.ground_temp_data['temperature'].tolist()
    
    def get_supply_temperature(self) -> List[float]:
        """
        Get the supply temperature time series.
        
        Returns:
            List of supply temperatures
            
        Raises:
            RuntimeError: If supply temperature data hasn't been loaded
        """
        if self.supply_temp_data is None:
            raise RuntimeError("Supply temperature data not loaded")
        
        return self.supply_temp_data['temperature'].tolist()
    
    def get_heat_input(self) -> Dict[str, List[float]]:
        """
        Get the heat input time series for all points.
        
        Returns:
            Dictionary mapping point names to their heat input time series
            
        Raises:
            RuntimeError: If heat input data hasn't been loaded
        """
        if self.heat_input_data is None:
            raise RuntimeError("Heat input data not loaded")
        
        # Exclude the time column
        point_columns = [col for col in self.heat_input_data.columns if col != 'time']
        
        return {
            point: self.heat_input_data[point].tolist()
            for point in point_columns
        }
    
    def get_heat_input_for_point(self, point: str) -> List[float]:
        """
        Get the heat input time series for a specific point.
        
        Args:
            point: Name of the point to get heat input for
            
        Returns:
            List of heat input values for the specified point
            
        Raises:
            RuntimeError: If heat input data hasn't been loaded
            KeyError: If the specified point doesn't exist in the data
        """
        if self.heat_input_data is None:
            raise RuntimeError("Heat input data not loaded")
        
        if point not in self.heat_input_data.columns:
            raise KeyError(f"Point '{point}' not found in heat input data")
        
        return self.heat_input_data[point].tolist()
    
    def get_timestamps(self) -> List[float]:
        """
        Get the time points for the loaded data.
        
        Returns:
            List of timestamps
            
        Raises:
            RuntimeError: If no data has been loaded
        """
        if all(data is None for data in [
            self.ground_temp_data,
            self.supply_temp_data,
            self.heat_input_data
        ]):
            raise RuntimeError("No data has been loaded")
        
        # Return timestamps from the first available dataset
        for data in [self.ground_temp_data, self.supply_temp_data, self.heat_input_data]:
            if data is not None:
                return data['time'].tolist()
