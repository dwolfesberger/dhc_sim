model Heat_network_open_loop_dT_var_inputs
  "System model with inputs for network"
  extends Modelica.Icons.Example;

  Heat_network_open_loop_dT_var networkModel
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={20, 0}
    )));

  

  

  

  

  

  

  

  

  

  

  

  

  

  

  

  

  

  

  

  

  

  

  

  

  

  

  

  

  

  

  

  

  

  

  

  

  Modelica.Blocks.Sources.CombiTimeTable B1180GregorMendelStrae22_TIn_Table(
    tableOnFile=true,
    tableName="TIn",
    columns={2},
    fileName=Modelica.Utilities.Files.loadResource(
      "modelica://Heat_network_open_loop_dT_var/Resources/Inputs/supply_B1180GregorMendelStrae22_TIn.txt"
    ),
    extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic)
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=180,
      origin={70, 80.0}
    )));

  Modelica.Blocks.Sources.CombiTimeTable B1180GregorMendelStrae22_dpIn_Table(
    tableOnFile=true,
    tableName="dpIn",
    columns={2},
    fileName=Modelica.Utilities.Files.loadResource(
      "modelica://Heat_network_open_loop_dT_var/Resources/Inputs/supply_B1180GregorMendelStrae22_dpIn.txt"
    ),
    extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic)
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=180,
      origin={90, 70.0}
    )));

  Modelica.Blocks.Sources.CombiTimeTable TGroundTable(
    tableOnFile=true,
    tableName="T_ground",
    columns={2},
    fileName=Modelica.Utilities.Files.loadResource(
      "modelica://Heat_network_open_loop_dT_var/Resources/Inputs/T_ground.txt"
    ),
    extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic)
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=90,
      origin={20, -80}
    )));
  teaser.B1180GregorMendelStrae22.B1180GregorMendelStrae22_Models.B1180GregorMendelStrae22_SingleDwelling B1180GregorMendelStrae22_teaser;
  
  teaser.B1180AnastasiusGrnGasse52_2.B1180AnastasiusGrnGasse52_2_Models.B1180AnastasiusGrnGasse52_2_SingleDwelling B1180AnastasiusGrnGasse52_2_teaser;
  
  teaser.B1180Sternwartestrae50.B1180Sternwartestrae50_Models.B1180Sternwartestrae50_SingleDwelling B1180Sternwartestrae50_teaser;
  
  teaser.B1180Colloredogasse25A.B1180Colloredogasse25A_Models.B1180Colloredogasse25A_SingleDwelling B1180Colloredogasse25A_teaser;
  
  teaser.B1180Sternwartestrae54.B1180Sternwartestrae54_Models.B1180Sternwartestrae54_SingleDwelling B1180Sternwartestrae54_teaser;
  
  teaser.B1180Colloredogasse31.B1180Colloredogasse31_Models.B1180Colloredogasse31_SingleDwelling B1180Colloredogasse31_teaser;
  
  teaser.B1180Cottagegasse27.B1180Cottagegasse27_Models.B1180Cottagegasse27_SingleDwelling B1180Cottagegasse27_teaser;
  
  teaser.B1180GustavTschermakGasse6.B1180GustavTschermakGasse6_Models.B1180GustavTschermakGasse6_SingleDwelling B1180GustavTschermakGasse6_teaser;
  
  teaser.B1180Colloredogasse27.B1180Colloredogasse27_Models.B1180Colloredogasse27_SingleDwelling B1180Colloredogasse27_teaser;
  
  teaser.B1180GregorMendelStrae26.B1180GregorMendelStrae26_Models.B1180GregorMendelStrae26_SingleDwelling B1180GregorMendelStrae26_teaser;
  
  teaser.B1180Colloredogasse25.B1180Colloredogasse25_Models.B1180Colloredogasse25_SingleDwelling B1180Colloredogasse25_teaser;
  
  teaser.B1180AnastasiusGrnGasse47.B1180AnastasiusGrnGasse47_Models.B1180AnastasiusGrnGasse47_SingleDwelling B1180AnastasiusGrnGasse47_teaser;
  
  teaser.B1180Sternwartestrae58.B1180Sternwartestrae58_Models.B1180Sternwartestrae58_SingleDwelling B1180Sternwartestrae58_teaser;
  
  teaser.B1180Colloredogasse.B1180Colloredogasse_Models.B1180Colloredogasse_SingleDwelling B1180Colloredogasse_teaser;
  
  teaser.B1180Colloredogasse29.B1180Colloredogasse29_Models.B1180Colloredogasse29_SingleDwelling B1180Colloredogasse29_teaser;
  
  teaser.B1180Sternwartestrae56_2.B1180Sternwartestrae56_2_Models.B1180Sternwartestrae56_2_SingleDwelling B1180Sternwartestrae56_2_teaser;
  
  teaser.B1180GregorMendelStrae24.B1180GregorMendelStrae24_Models.B1180GregorMendelStrae24_SingleDwelling B1180GregorMendelStrae24_teaser;
  
  teaser.B1180GustavTschermakGasse9.B1180GustavTschermakGasse9_Models.B1180GustavTschermakGasse9_SingleDwelling B1180GustavTschermakGasse9_teaser;
  
  teaser.B1180GustavTschermakGasse57.B1180GustavTschermakGasse57_Models.B1180GustavTschermakGasse57_SingleDwelling B1180GustavTschermakGasse57_teaser;
  
  teaser.B1180AnastasiusGrnGasse51.B1180AnastasiusGrnGasse51_Models.B1180AnastasiusGrnGasse51_SingleDwelling B1180AnastasiusGrnGasse51_teaser;
  
  teaser.B1180Sternwartestrae60.B1180Sternwartestrae60_Models.B1180Sternwartestrae60_SingleDwelling B1180Sternwartestrae60_teaser;
  
  teaser.B1180GustavTschermakGasse4.B1180GustavTschermakGasse4_Models.B1180GustavTschermakGasse4_SingleDwelling B1180GustavTschermakGasse4_teaser;
  
  teaser.B1180Sternwartestrae56_1.B1180Sternwartestrae56_1_Models.B1180Sternwartestrae56_1_SingleDwelling B1180Sternwartestrae56_1_teaser;
  
  teaser.B1180GustavTschermakGasse3.B1180GustavTschermakGasse3_Models.B1180GustavTschermakGasse3_SingleDwelling B1180GustavTschermakGasse3_teaser;
  
  teaser.B1180Cottagegasse29.B1180Cottagegasse29_Models.B1180Cottagegasse29_SingleDwelling B1180Cottagegasse29_teaser;
  
  teaser.B1180GregorMendelStrae28_2.B1180GregorMendelStrae28_2_Models.B1180GregorMendelStrae28_2_SingleDwelling B1180GregorMendelStrae28_2_teaser;
  
  teaser.B1180Sternwartestrae48.B1180Sternwartestrae48_Models.B1180Sternwartestrae48_SingleDwelling B1180Sternwartestrae48_teaser;
  
  teaser.B1180Colloredogasse33A_2.B1180Colloredogasse33A_2_Models.B1180Colloredogasse33A_2_SingleDwelling B1180Colloredogasse33A_2_teaser;
  
  teaser.B1180GregorMendelStrae28_1.B1180GregorMendelStrae28_1_Models.B1180GregorMendelStrae28_1_SingleDwelling B1180GregorMendelStrae28_1_teaser;
  
  teaser.B1180Cottagegasse31.B1180Cottagegasse31_Models.B1180Cottagegasse31_SingleDwelling B1180Cottagegasse31_teaser;
  
  teaser.B1180AnastasiusGrnGasse54.B1180AnastasiusGrnGasse54_Models.B1180AnastasiusGrnGasse54_SingleDwelling B1180AnastasiusGrnGasse54_teaser;
  
  teaser.B1180AnastasiusGrnGasse49.B1180AnastasiusGrnGasse49_Models.B1180AnastasiusGrnGasse49_SingleDwelling B1180AnastasiusGrnGasse49_teaser;
  
  teaser.B1180Colloredogasse33A_1.B1180Colloredogasse33A_1_Models.B1180Colloredogasse33A_1_SingleDwelling B1180Colloredogasse33A_1_teaser;
  
  teaser.B1180AnastasiusGrnGasse58.B1180AnastasiusGrnGasse58_Models.B1180AnastasiusGrnGasse58_SingleDwelling B1180AnastasiusGrnGasse58_teaser;
  
  teaser.B1180AnastasiusGrnGasse52_1.B1180AnastasiusGrnGasse52_1_Models.B1180AnastasiusGrnGasse52_1_SingleDwelling B1180AnastasiusGrnGasse52_1_teaser;
  
  teaser.B1180AnastasiusGrnGasse56.B1180AnastasiusGrnGasse56_Models.B1180AnastasiusGrnGasse56_SingleDwelling B1180AnastasiusGrnGasse56_teaser;
  
  teaser.B1180Sternwartestrae52.B1180Sternwartestrae52_Models.B1180Sternwartestrae52_SingleDwelling B1180Sternwartestrae52_teaser;
  
equation
  connect(networkModel.B1180Sternwartestrae52Q_flow_input, B1180Sternwartestrae52_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, 80.0},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180AnastasiusGrnGasse56Q_flow_input, B1180AnastasiusGrnGasse56_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, 75.4286},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180AnastasiusGrnGasse52_1Q_flow_input, B1180AnastasiusGrnGasse52_1_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, 70.8571},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180AnastasiusGrnGasse58Q_flow_input, B1180AnastasiusGrnGasse58_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, 66.2857},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180Colloredogasse33A_1Q_flow_input, B1180Colloredogasse33A_1_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, 61.7143},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180AnastasiusGrnGasse49Q_flow_input, B1180AnastasiusGrnGasse49_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, 57.1429},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180AnastasiusGrnGasse54Q_flow_input, B1180AnastasiusGrnGasse54_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, 52.5714},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180Cottagegasse31Q_flow_input, B1180Cottagegasse31_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, 48.0},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180GregorMendelStrae28_1Q_flow_input, B1180GregorMendelStrae28_1_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, 43.4286},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180Colloredogasse33A_2Q_flow_input, B1180Colloredogasse33A_2_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, 38.8571},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180Sternwartestrae48Q_flow_input, B1180Sternwartestrae48_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, 34.2857},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180GregorMendelStrae28_2Q_flow_input, B1180GregorMendelStrae28_2_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, 29.7143},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180Cottagegasse29Q_flow_input, B1180Cottagegasse29_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, 25.1429},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180GustavTschermakGasse3Q_flow_input, B1180GustavTschermakGasse3_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, 20.5714},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180Sternwartestrae56_1Q_flow_input, B1180Sternwartestrae56_1_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, 16.0},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180GustavTschermakGasse4Q_flow_input, B1180GustavTschermakGasse4_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, 11.4286},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180Sternwartestrae60Q_flow_input, B1180Sternwartestrae60_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, 6.8571},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180AnastasiusGrnGasse51Q_flow_input, B1180AnastasiusGrnGasse51_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, 2.2857},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180GustavTschermakGasse57Q_flow_input, B1180GustavTschermakGasse57_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, -2.2857},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180GustavTschermakGasse9Q_flow_input, B1180GustavTschermakGasse9_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, -6.8571},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180GregorMendelStrae24Q_flow_input, B1180GregorMendelStrae24_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, -11.4286},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180Sternwartestrae56_2Q_flow_input, B1180Sternwartestrae56_2_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, -16.0},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180Colloredogasse29Q_flow_input, B1180Colloredogasse29_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, -20.5714},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180ColloredogasseQ_flow_input, B1180Colloredogasse_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, -25.1429},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180Sternwartestrae58Q_flow_input, B1180Sternwartestrae58_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, -29.7143},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180AnastasiusGrnGasse47Q_flow_input, B1180AnastasiusGrnGasse47_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, -34.2857},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180Colloredogasse25Q_flow_input, B1180Colloredogasse25_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, -38.8571},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180GregorMendelStrae26Q_flow_input, B1180GregorMendelStrae26_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, -43.4286},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180Colloredogasse27Q_flow_input, B1180Colloredogasse27_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, -48.0},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180GustavTschermakGasse6Q_flow_input, B1180GustavTschermakGasse6_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, -52.5714},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180Cottagegasse27Q_flow_input, B1180Cottagegasse27_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, -57.1429},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180Colloredogasse31Q_flow_input, B1180Colloredogasse31_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, -61.7143},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180Sternwartestrae54Q_flow_input, B1180Sternwartestrae54_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, -66.2857},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180Colloredogasse25AQ_flow_input, B1180Colloredogasse25A_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, -70.8571},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180Sternwartestrae50Q_flow_input, B1180Sternwartestrae50_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, -75.4286},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180AnastasiusGrnGasse52_2Q_flow_input, B1180AnastasiusGrnGasse52_2_teaser.QFlowHeat)
    annotation (Line(
        points={
          {-70, -80.0},{20, 0}
        },
        color={0,0,127}
      )
    );
  connect(networkModel.B1180GregorMendelStrae22TIn, B1180GregorMendelStrae22_TIn_Table.y[1])
    annotation (Line(
        points={
          {70, 80.0},{20, 0}
        },
        color={0,0,127}
      )
    );

  connect(networkModel.B1180GregorMendelStrae22dpIn, B1180GregorMendelStrae22_dpIn_Table.y[1])
    annotation (Line(
        points={
          {70, 80.0},{20, 0}
        },
        color={0,0,127}
      )
    );

  connect(networkModel.TGroundIn, TGroundTable.y[1])
    annotation (Line(
        points={
          {20, -80},{20, 0}
        },
        color={0,0,127}
      )
    );
annotation (
  Documentation(
    info="<html>
    <p>System model connecting the network model with table inputs</p>
    </html>", revisions="<html>
    <ul>
      <li><i>November 08, 2024&nbsp;</i> uesmodels 0.8.3:<br/>Auto-generated.</li>
    </ul>
    </html>"
    ),
  uses(AixLib),
  experiment(
      Tolerance=1e-05,
      StopTime=603900,
      Interval=900,
      __Dymola_Algorithm="Cvode"),
      __Dymola_experimentSetupOutput(events=false)
);
end Heat_network_open_loop_dT_var_inputs;
