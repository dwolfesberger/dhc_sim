"""
Time series data handling for district heating simulations.

This module provides functions for loading and managing time series data
from JSON files, including ground temperatures and supply temperatures.
"""

import json
import logging
from pathlib import Path
from typing import Dict, List, Optional, Union

logger = logging.getLogger(__name__)

class TimeSeriesData:
    """Load and manage time series data from JSON files."""
    
    def __init__(self):
        """Initialize time series data manager."""
        self._ground_temp = None
        self._supply_temp = None
        self._timestep = 900  # Default 15 minutes

    def load_ground_temperature(self, filepath: Union[str, Path]) -> bool:
        """
        Load ground temperature data from JSON file.

        Args:
            filepath: Path to the JSON file

        Returns:
            True if loading was successful
        """
        data = self._load_json_file(filepath)
        if not data:
            return False

        self._ground_temp = data.get('values', [])
        if timestep := data.get('timestep'):
            self._timestep = timestep
        return True

    def load_supply_temperature(self, filepath: Union[str, Path]) -> bool:
        """
        Load supply temperature data from JSON file.

        Args:
            filepath: Path to the JSON file

        Returns:
            True if loading was successful
        """
        data = self._load_json_file(filepath)
        if not data:
            return False

        self._supply_temp = data.get('values', [])
        if timestep := data.get('timestep'):
            self._timestep = timestep
        return True

    def _load_json_file(self, filepath: Union[str, Path]) -> Dict:
        """Load data from JSON file."""
        try:
            with open(filepath) as f:
                return json.load(f)
        except Exception as e:
            logger.error(f"Error loading {filepath}: {e}")
            return {}

    @property
    def ground_temperature(self) -> Optional[List[float]]:
        """Get ground temperature time series."""
        return self._ground_temp

    @property
    def supply_temperature(self) -> Optional[List[float]]:
        """Get supply temperature time series."""
        return self._supply_temp

    @property
    def timestep(self) -> int:
        """Get timestep in seconds."""
        return self._timestep

    def validate(self) -> bool:
        """
        Validate time series data.

        Returns:
            True if data is valid
        """
        try:
            # Check if at least one temperature series is loaded
            if self._ground_temp is None and self._supply_temp is None:
                logger.error("No temperature data loaded")
                return False
            
            # If both are loaded, check lengths match
            if self._ground_temp is not None and self._supply_temp is not None:
                if len(self._ground_temp) != len(self._supply_temp):
                    logger.error("Temperature series length mismatch")
                    return False
            
            # Check ground temperature values if loaded
            if self._ground_temp is not None:
                if not all(isinstance(x, (int, float)) for x in self._ground_temp):
                    logger.error("Invalid ground temperature values")
                    return False
            
            # Check supply temperature values if loaded
            if self._supply_temp is not None:
                if not all(isinstance(x, (int, float)) for x in self._supply_temp):
                    logger.error("Invalid supply temperature values")
                    return False
            
            return True
        except Exception as e:
            logger.error(f"Error validating time series data: {e}")
            return False

    def get_values_at_timestep(self, timestep: int) -> Dict[str, float]:
        """
        Get all values at a specific timestep.

        Args:
            timestep: Index of the timestep

        Returns:
            Dictionary with available temperature values
        """
        result = {}
        
        if self._ground_temp is not None:
            if not 0 <= timestep < len(self._ground_temp):
                raise ValueError(f"Invalid timestep: {timestep}")
            result['ground_temperature'] = self._ground_temp[timestep]
            
        if self._supply_temp is not None:
            if not 0 <= timestep < len(self._supply_temp):
                raise ValueError(f"Invalid timestep: {timestep}")
            result['supply_temperature'] = self._supply_temp[timestep]
            
        if not result:
            raise ValueError("No temperature data loaded")
            
        return result
