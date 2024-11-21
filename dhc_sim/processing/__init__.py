"""
Processing modules for district heating and cooling simulations.

This package provides functionality for:
- CityGML file processing and address management
- Network creation and manipulation
- Modelica model generation and modification
"""

from .citygml import GMLProcessor, AddressManager
from .network import NetworkProcessor
from .modelica import add_pid_heater_to_IBPSA_model

__all__ = [
    'GMLProcessor',
    'AddressManager',
    'NetworkProcessor',
    'add_pid_heater_to_IBPSA_model'
]
