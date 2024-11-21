"""
Functions for processing Modelica models.

This module provides functionality for modifying and enhancing Modelica models,
particularly for adding heating systems and controllers to building models.
"""

from modelica_builder.model import Model

def add_pid_heater_to_IBPSA_model(model: Model) -> Model:
    """
    Add PID controlled heater to an IBPSA building model.
    
    This function adds:
    - A heat flow output connector
    - A PID controller for temperature regulation
    - A gain element for splitting heat between radiative and convective parts
    - Heat flow sources for both radiative and convective heating
    
    Args:
        model: A modelica_builder Model instance representing an IBPSA building model
        
    Returns:
        The modified Model instance with added heating system
    """
    # Add heat flow output connector
    model.insert_component('Modelica.Blocks.Interfaces.RealOutput', 'QFlowHeat',
                        insert_index=-1)

    # Add gain element for heat distribution
    model.insert_component('Modelica.Blocks.Math.Gain', 'gain',
                        modifications={'k': '0.5'},
                        insert_index=-1)

    # Add PID controller
    model.insert_component('AixLib.Controls.Continuous.LimPID', 'heatingPID',
                        modifications={'yMax': 'Q_heat_nominal', 'xi_start': 'Q_heat_nominal'},
                        insert_index=-1)

    # Add temperature setpoint
    model.insert_component('Modelica.Blocks.Sources.Constant', 'TAirSet',
                        modifications={'k': '273.15 + 22'},
                        insert_index=-1)

    # Add heat flow sources
    model.insert_component('Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow', 'heaterRadiant',
                        insert_index=-1)
    model.insert_component('Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow', 'heaterConvective',
                        insert_index=-1)

    # Connect components
    model.add_connect('QFlowHeat', 'heatingPID.y')
    model.add_connect('heatingPID.y', 'gain.u')
    model.add_connect('gain.y', 'heaterRadiant.Q_flow')
    model.add_connect('gain.y', 'heaterConvective.Q_flow')
    model.add_connect('heaterRadiant.port', 'thermalZoneFourElements.intGainsRad')
    model.add_connect('heaterConvective.port', 'thermalZoneFourElements.intGainsConv') 
    model.add_connect('thermalZoneFourElements.TAir', 'heatingPID.u_m')
    model.add_connect('TAirSet.y', 'heatingPID.u_s')

    return model
