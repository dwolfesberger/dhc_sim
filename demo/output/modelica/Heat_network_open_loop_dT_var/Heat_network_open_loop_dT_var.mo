model Heat_network_open_loop_dT_var
  "Model automatically generated with uesmodels at 2024-11-08 09:50:51.983668"

  package Medium = AixLib.Media.Specialized.Water.ConstantProperties_pT(
    T_nominal=353.15,
    p_nominal=500000.0,
    T_default=353.15
  );
  AixLib.Fluid.DistrictHeatingCooling.Supplies.OpenLoop.SourceIdeal supplyB1180GregorMendelStrae22(
    redeclare package Medium = Medium,
    pReturn = 200000.0,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={28.7614,186.1533})));

  Modelica.Blocks.Interfaces.RealInput B1180GregorMendelStrae22TIn
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={53.7614,211.1533}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={100,90.0})
      ));

  Modelica.Blocks.Interfaces.RealInput B1180GregorMendelStrae22dpIn
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={53.7614,201.1533}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={100,100.0})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180Sternwartestrae52(
    redeclare package Medium = Medium,
    Q_flow_nominal = 223426.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={235.7405,71.8415})));

  Modelica.Blocks.Interfaces.RealInput B1180Sternwartestrae52Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={260.7405,96.8415}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,90.0})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180AnastasiusGrnGasse56(
    redeclare package Medium = Medium,
    Q_flow_nominal = 62714.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={222.1259,222.2999})));

  Modelica.Blocks.Interfaces.RealInput B1180AnastasiusGrnGasse56Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={247.1259,247.2999}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,84.8571})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180AnastasiusGrnGasse52_1(
    redeclare package Medium = Medium,
    Q_flow_nominal = 89232.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={335.9954,160.0297})));

  Modelica.Blocks.Interfaces.RealInput B1180AnastasiusGrnGasse52_1Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={360.9954,185.0297}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,79.7143})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180AnastasiusGrnGasse58(
    redeclare package Medium = Medium,
    Q_flow_nominal = 126006.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={188.0196,221.8159})));

  Modelica.Blocks.Interfaces.RealInput B1180AnastasiusGrnGasse58Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={213.0196,246.8159}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,74.5714})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180Colloredogasse33A_1(
    redeclare package Medium = Medium,
    Q_flow_nominal = 40831.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={94.775,270.5343})));

  Modelica.Blocks.Interfaces.RealInput B1180Colloredogasse33A_1Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={119.775,295.5343}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,69.4286})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180AnastasiusGrnGasse49(
    redeclare package Medium = Medium,
    Q_flow_nominal = 72130.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={223.3578,153.6979})));

  Modelica.Blocks.Interfaces.RealInput B1180AnastasiusGrnGasse49Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={248.3578,178.6979}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,64.2857})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180AnastasiusGrnGasse54(
    redeclare package Medium = Medium,
    Q_flow_nominal = 120657.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={256.8439,194.6698})));

  Modelica.Blocks.Interfaces.RealInput B1180AnastasiusGrnGasse54Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={281.8439,219.6698}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,59.1429})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180Cottagegasse31(
    redeclare package Medium = Medium,
    Q_flow_nominal = 143043.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={319.6792,111.9001})));

  Modelica.Blocks.Interfaces.RealInput B1180Cottagegasse31Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={344.6792,136.9001}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,54.0})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180GregorMendelStrae28_1(
    redeclare package Medium = Medium,
    Q_flow_nominal = 4138.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={15.3891,269.2268})));

  Modelica.Blocks.Interfaces.RealInput B1180GregorMendelStrae28_1Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={40.3891,294.2268}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,48.8571})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180Colloredogasse33A_2(
    redeclare package Medium = Medium,
    Q_flow_nominal = 52862.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={82.7272,270.6619})));

  Modelica.Blocks.Interfaces.RealInput B1180Colloredogasse33A_2Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={107.7272,295.6619}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,43.7143})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180Sternwartestrae48(
    redeclare package Medium = Medium,
    Q_flow_nominal = 108919.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={294.9012,40.2776})));

  Modelica.Blocks.Interfaces.RealInput B1180Sternwartestrae48Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={319.9012,65.2776}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,38.5714})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180GregorMendelStrae28_2(
    redeclare package Medium = Medium,
    Q_flow_nominal = 119853.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={27.6064,277.1657})));

  Modelica.Blocks.Interfaces.RealInput B1180GregorMendelStrae28_2Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={52.6064,302.1657}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,33.4286})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180Cottagegasse29(
    redeclare package Medium = Medium,
    Q_flow_nominal = 137919.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={318.2988,73.0029})));

  Modelica.Blocks.Interfaces.RealInput B1180Cottagegasse29Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={343.2988,98.0029}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,28.2857})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180GustavTschermakGasse3(
    redeclare package Medium = Medium,
    Q_flow_nominal = 139685.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={136.2714,161.8446})));

  Modelica.Blocks.Interfaces.RealInput B1180GustavTschermakGasse3Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={161.2714,186.8446}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,23.1429})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180Sternwartestrae56_1(
    redeclare package Medium = Medium,
    Q_flow_nominal = 7191.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={110.9339,108.4547})));

  Modelica.Blocks.Interfaces.RealInput B1180Sternwartestrae56_1Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={135.9339,133.4547}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,18.0})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180GustavTschermakGasse4(
    redeclare package Medium = Medium,
    Q_flow_nominal = 75870.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={184.8516,117.0198})));

  Modelica.Blocks.Interfaces.RealInput B1180GustavTschermakGasse4Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={209.8516,142.0198}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,12.8571})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180Sternwartestrae60(
    redeclare package Medium = Medium,
    Q_flow_nominal = 92134.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={30.0235,153.4685})));

  Modelica.Blocks.Interfaces.RealInput B1180Sternwartestrae60Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={55.0235,178.4685}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,7.7143})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180AnastasiusGrnGasse51(
    redeclare package Medium = Medium,
    Q_flow_nominal = 66658.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={185.1678,164.0439})));

  Modelica.Blocks.Interfaces.RealInput B1180AnastasiusGrnGasse51Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={210.1678,189.0439}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,2.5714})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180GustavTschermakGasse57(
    redeclare package Medium = Medium,
    Q_flow_nominal = 168931.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={115.8875,208.4268})));

  Modelica.Blocks.Interfaces.RealInput B1180GustavTschermakGasse57Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={140.8875,233.4268}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,-2.5714})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180GustavTschermakGasse9(
    redeclare package Medium = Medium,
    Q_flow_nominal = 3095.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={136.5819,264.2405})));

  Modelica.Blocks.Interfaces.RealInput B1180GustavTschermakGasse9Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={161.5819,289.2405}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,-7.7143})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180GregorMendelStrae24(
    redeclare package Medium = Medium,
    Q_flow_nominal = 82689.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={27.6316,212.2757})));

  Modelica.Blocks.Interfaces.RealInput B1180GregorMendelStrae24Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={52.6316,237.2757}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,-12.8571})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180Sternwartestrae56_2(
    redeclare package Medium = Medium,
    Q_flow_nominal = 168309.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={120.2028,119.5402})));

  Modelica.Blocks.Interfaces.RealInput B1180Sternwartestrae56_2Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={145.2028,144.5402}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,-18.0})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180Colloredogasse29(
    redeclare package Medium = Medium,
    Q_flow_nominal = 114201.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={195.1976,264.1086})));

  Modelica.Blocks.Interfaces.RealInput B1180Colloredogasse29Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={220.1976,289.1086}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,-23.1429})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180Colloredogasse(
    redeclare package Medium = Medium,
    Q_flow_nominal = 129352.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={277.8168,233.9843})));

  Modelica.Blocks.Interfaces.RealInput B1180ColloredogasseQ_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={302.8168,258.9843}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,-28.2857})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180Sternwartestrae58(
    redeclare package Medium = Medium,
    Q_flow_nominal = 43072.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={75.4412,141.2941})));

  Modelica.Blocks.Interfaces.RealInput B1180Sternwartestrae58Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={100.4412,166.2941}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,-33.4286})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180AnastasiusGrnGasse47(
    redeclare package Medium = Medium,
    Q_flow_nominal = 53627.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={244.7252,134.5591})));

  Modelica.Blocks.Interfaces.RealInput B1180AnastasiusGrnGasse47Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={269.7252,159.5591}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,-38.5714})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180Colloredogasse25(
    redeclare package Medium = Medium,
    Q_flow_nominal = 175745.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={360.8907,244.1887})));

  Modelica.Blocks.Interfaces.RealInput B1180Colloredogasse25Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={385.8907,269.1887}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,-43.7143})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180GregorMendelStrae26(
    redeclare package Medium = Medium,
    Q_flow_nominal = 136039.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={32.4921,241.5685})));

  Modelica.Blocks.Interfaces.RealInput B1180GregorMendelStrae26Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={57.4921,266.5685}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,-48.8571})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180Colloredogasse27(
    redeclare package Medium = Medium,
    Q_flow_nominal = 120971.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={235.5017,265.3969})));

  Modelica.Blocks.Interfaces.RealInput B1180Colloredogasse27Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={260.5017,290.3969}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,-54.0})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180GustavTschermakGasse6(
    redeclare package Medium = Medium,
    Q_flow_nominal = 54822.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={184.1268,140.4358})));

  Modelica.Blocks.Interfaces.RealInput B1180GustavTschermakGasse6Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={209.1268,165.4358}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,-59.1429})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180Cottagegasse27(
    redeclare package Medium = Medium,
    Q_flow_nominal = 4990.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={324.1506,31.9009})));

  Modelica.Blocks.Interfaces.RealInput B1180Cottagegasse27Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={349.1506,56.9009}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,-64.2857})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180Colloredogasse31(
    redeclare package Medium = Medium,
    Q_flow_nominal = 132594.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={120.1342,264.6065})));

  Modelica.Blocks.Interfaces.RealInput B1180Colloredogasse31Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={145.1342,289.6065}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,-69.4286})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180Sternwartestrae54(
    redeclare package Medium = Medium,
    Q_flow_nominal = 86841.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={186.3318,86.615})));

  Modelica.Blocks.Interfaces.RealInput B1180Sternwartestrae54Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={211.3318,111.615}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,-74.5714})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180Colloredogasse25A(
    redeclare package Medium = Medium,
    Q_flow_nominal = 131247.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={323.0446,251.267})));

  Modelica.Blocks.Interfaces.RealInput B1180Colloredogasse25AQ_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={348.0446,276.267}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,-79.7143})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180Sternwartestrae50(
    redeclare package Medium = Medium,
    Q_flow_nominal = 86865.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={267.1777,50.9059})));

  Modelica.Blocks.Interfaces.RealInput B1180Sternwartestrae50Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={292.1777,75.9059}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,-84.8571})
      ));

  AixLib.Fluid.DistrictHeatingCooling.Demands.OpenLoop.VarTSupplyDp demandB1180AnastasiusGrnGasse52_2(
    redeclare package Medium = Medium,
    Q_flow_nominal = 126806.0,
    dTDesign = 30,
    TReturn = 323.15
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
      rotation=0,
      origin={307.1083,196.3991})));

  Modelica.Blocks.Interfaces.RealInput B1180AnastasiusGrnGasse52_2Q_flow_input
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={332.1083,221.3991}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={-100,-90.0})
      ));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe85(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 21.1,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 75.0077,
      origin={328.8963,13.4464})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe85R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 21.1,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 75.0077,
      origin={323.8963,8.4464})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe86(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 29.1,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 156.628,
      origin={307.6821,7.6117})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe86R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 29.1,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 156.628,
      origin={302.6821,2.6117})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe87(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 25.4,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 75.0078,
      origin={336.834,43.0862})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe87R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 25.4,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 75.0078,
      origin={331.834,38.0862})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe31(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 7.4,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 149.0358,
      origin={328.324,29.3969})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe31R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 7.4,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 149.0358,
      origin={323.324,24.3969})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe88(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 22.7,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 156.6277,
      origin={276.3274,21.162})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe88R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 22.7,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 156.6277,
      origin={271.3274,16.162})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe11(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 19.3,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 79.0829,
      origin={292.485,27.7505})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe11R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 19.3,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 79.0829,
      origin={287.485,22.7505})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe89(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 35.8,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 89.3386,
      origin={0.273,163.236})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe89R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 35.8,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 89.3386,
      origin={-4.727,158.236})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe90(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 94.5,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 336.9237,
      origin={57.3605,115.1501})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe90R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 94.5,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 336.9237,
      origin={52.3605,110.1501})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe91(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 19.8,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 89.3386,
      origin={0.6965,199.9263})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe91R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 19.8,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 89.3386,
      origin={-4.3035,194.9263})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe37(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 21.4,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 358.5172,
      origin={14.6537,186.5185})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe37R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 21.4,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 358.5172,
      origin={9.6537,181.5185})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe92(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 5.5,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 156.9242,
      origin={111.4088,92.1229})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe92R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 5.5,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 156.9242,
      origin={106.4088,87.1229})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe93(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 28.1,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 269.3387,
      origin={1.7146,288.1212})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe93R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 28.1,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 269.3387,
      origin={-3.2854,283.1212})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe94(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 103.3,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 354.9731,
      origin={69.8529,300.6814})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe94R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 103.3,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 354.9731,
      origin={64.8529,295.6814})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe95(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 20.6,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 269.3387,
      origin={1.3436,255.9826})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe95R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 20.6,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 269.3387,
      origin={-3.6564,250.9826})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe9(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 10.5,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 358.5172,
      origin={8.4448,269.4065})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe9R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 10.5,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 358.5172,
      origin={3.4448,264.4065})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe96(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 12.5,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 174.9735,
      origin={129.5746,295.428})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe96R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 12.5,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 174.9735,
      origin={124.5746,290.428})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe20(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 23.1,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 267.7531,
      origin={137.1796,279.4735})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe20R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 23.1,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 267.7531,
      origin={132.1796,274.4735})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe97(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 60.0,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 174.9735,
      origin={123.3032,295.9797})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe97R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 60.0,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 174.9735,
      origin={118.3032,290.9797})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe98(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 151.5,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 355.2988,
      origin={262.4054,284.315})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe98R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 151.5,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 355.2988,
      origin={257.4054,279.315})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe99(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 42.0,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 174.973,
      origin={56.2643,301.8764})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe99R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 42.0,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 174.973,
      origin={51.2643,296.8764})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe10(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 21.8,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 267.7527,
      origin={83.2921,285.0556})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe10R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 21.8,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 267.7527,
      origin={78.2921,280.0556})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe100(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 28.9,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 175.2994,
      origin={343.0659,277.6816})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe100R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 28.9,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 175.2994,
      origin={338.0659,272.6816})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe27(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 24.2,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 267.9003,
      origin={361.4761,260.1542})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe27R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 24.2,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 267.9003,
      origin={356.4761,255.1542})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe101(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 154.9,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 175.2991,
      origin={298.0694,281.3822})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe101R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 154.9,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 175.2991,
      origin={293.0694,276.3822})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe102(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 30.5,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 355.2985,
      origin={216.2065,288.1137})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe102R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 30.5,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 355.2985,
      origin={211.2065,283.1137})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe23(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 19.4,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 267.8991,
      origin={195.6682,276.9363})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe23R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 19.4,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 267.8991,
      origin={190.6682,271.9363})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe103(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 68.9,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 89.5547,
      origin={162.6612,115.9079})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe103R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 68.9,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 89.5547,
      origin={157.6612,110.9079})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe104(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 76.4,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 156.9242,
      origin={115.8975,90.2108})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe104R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 76.4,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 156.9242,
      origin={110.8975,85.2108})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe105(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 33.3,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 269.5547,
      origin={162.8437,139.3923})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe105R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 33.3,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 269.5547,
      origin={157.8437,134.3923})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe14(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 20.3,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 178.9993,
      origin={149.643,161.6111})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe14R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 20.3,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 178.9993,
      origin={144.643,156.6111})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe18(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 16.9,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 6.8632,
      origin={174.0912,162.7107})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe18R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 16.9,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 6.8632,
      origin={169.0912,157.7107})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe106(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 36.4,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 156.9236,
      origin={47.4094,119.3895})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe106R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 36.4,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 156.9236,
      origin={42.4094,114.3895})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe25(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 24.1,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 79.2332,
      origin={72.4642,125.6387})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe25R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 24.1,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 79.2332,
      origin={67.4642,120.6387})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe107(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 46.5,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 269.5547,
      origin={163.0933,171.5045})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe107R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 46.5,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 269.5547,
      origin={158.0933,166.5045})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe108(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 16.2,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 338.5468,
      origin={173.2708,198.2962})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe108R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 16.2,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 338.5468,
      origin={168.2708,193.2962})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe109(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 26.3,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 176.8759,
      origin={145.9972,203.1479})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe109R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 26.3,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 176.8759,
      origin={140.9972,198.1479})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe110(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 17.7,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 269.5547,
      origin={162.7638,129.1072})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe110R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 17.7,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 269.5547,
      origin={157.7638,124.1072})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe30(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 16.1,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 358.9994,
      origin={173.4907,140.6215})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe30R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 16.1,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 358.9994,
      origin={168.4907,135.6215})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe111(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 5.5,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 338.5469,
      origin={186.6151,193.0523})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe111R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 5.5,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 338.5469,
      origin={181.6151,188.0523})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe4(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 21.1,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 80.0526,
      origin={185.6146,208.1032})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe4R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 21.1,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 80.0526,
      origin={180.6146,203.1032})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe19(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 10.2,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 161.2652,
      origin={122.275,206.2604})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe19R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 10.2,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 161.2652,
      origin={117.275,201.2604})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe112(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 107.0,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 158.5478,
      origin={293.157,151.1864})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe112R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 107.0,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 158.5478,
      origin={288.157,146.1864})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe113(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 51.8,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 255.008,
      origin={350.0195,92.3225})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe113R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 51.8,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 255.008,
      origin={345.0195,87.3225})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe114(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 58.1,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 338.5476,
      origin={263.1184,162.9898})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe114R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 58.1,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 338.5476,
      origin={258.1184,157.9898})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe6(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 17.9,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 260.0528,
      origin={225.4017,165.3527})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe6R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 17.9,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 260.0528,
      origin={220.4017,160.3527})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe13(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 20.2,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 149.0357,
      origin={329.7347,66.1413})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe13R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 20.2,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 149.0357,
      origin={324.7347,61.1413})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe115(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 39.8,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 156.6271,
      origin={205.7216,51.6758})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe115R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 39.8,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 156.6271,
      origin={200.7216,46.6758})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe116(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 27.0,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 336.6275,
      origin={246.2131,34.1764})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe116R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 27.0,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 336.6275,
      origin={241.2131,29.1764})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe1(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 23.6,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 79.0825,
      origin={232.7904,56.5469})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe1R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 23.6,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 79.0825,
      origin={227.7904,51.5469})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe33(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 18.9,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 79.0821,
      origin={183.9673,74.3571})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe33R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 18.9,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 79.0821,
      origin={178.9673,69.3571})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe35(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 18.4,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 79.0827,
      origin={264.8818,39.0032})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe35R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 18.4,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 79.0827,
      origin={259.8818,34.0032})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe117(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 20.4,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 158.5471,
      origin={202.5292,186.7986})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe117R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 20.4,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 158.5471,
      origin={197.5292,181.7986})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe118(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 95.0,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 338.5477,
      origin={273.4103,158.9458})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe118R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 95.0,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 338.5477,
      origin={268.4103,153.9458})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe2(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 31.1,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 80.0528,
      origin={218.5818,202.0916})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe2R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 31.1,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 80.0528,
      origin={213.5818,197.0916})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe119(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 66.1,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 158.5478,
      origin={291.1793,151.9633})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe119R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 66.1,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 158.5478,
      origin={286.1793,146.9633})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe8(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 20.4,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 243.3407,
      origin={325.7311,123.9541})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe8R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 20.4,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 243.3407,
      origin={320.7311,118.9541})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe120(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 1.2,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 338.5475,
      origin={251.3132,167.6286})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe120R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 1.2,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 338.5475,
      origin={246.3132,162.6286})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe7(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 20.8,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 76.8126,
      origin={253.7097,181.2941})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe7R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 20.8,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 76.8126,
      origin={248.7097,176.2941})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe121(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 19.4,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 354.9734,
      origin={108.6201,297.2711})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe121R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 19.4,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 354.9734,
      origin={103.6201,292.2711})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe122(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 51.1,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 174.973,
      origin={62.2699,301.3481})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe122R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 51.1,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 174.973,
      origin={57.2699,296.3481})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe5(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 21.1,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 267.7528,
      origin={95.3216,284.4635})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe5R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 21.1,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 267.7528,
      origin={90.3216,279.4635})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe32(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 23.9,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 267.7529,
      origin={120.7531,280.378})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe32R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 23.9,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 267.7529,
      origin={115.7531,275.378})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe12(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 20.6,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 267.7523,
      origin={28.139,290.7346})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe12R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 20.6,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 267.7523,
      origin={23.139,285.7346})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe123(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 20.9,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 338.548,
      origin={311.6029,143.9378})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe123R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 20.9,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 338.548,
      origin={306.6029,138.9378})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe36(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 36.5,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 80.0534,
      origin={302.9497,172.6856})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe36R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 36.5,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 80.0534,
      origin={297.9497,167.6856})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe124(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 58.9,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 338.5478,
      origin={288.2327,153.1211})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe124R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 58.9,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 338.5478,
      origin={283.2327,148.1211})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe26(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 25.4,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 257.4026,
      origin={248.388,150.9489})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe26R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 25.4,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 257.4026,
      origin={243.388,145.9489})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe3(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 18.2,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 61.2697,
      origin={330.205,149.4666})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe3R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 18.2,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 61.2697,
      origin={325.205,144.4666})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe125(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 22.3,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 269.3387,
      origin={1.0168,227.6739})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe125R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 22.3,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 269.3387,
      origin={-3.9832,222.6739})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe28(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 23.7,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 358.5172,
      origin={16.8393,241.9737})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe28R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 23.7,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 358.5172,
      origin={11.8393,236.9737})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe16(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 16.8,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 358.9995,
      origin={173.7622,117.2134})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe16R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 16.8,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 358.9995,
      origin={168.7622,112.2134})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe126(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 68.1,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 156.9238,
      origin={66.7141,111.1649})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe126R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 68.1,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 156.9238,
      origin={61.7141,106.1649})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe15(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 11.5,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 79.2335,
      origin={109.5152,100.9944})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe15R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 11.5,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 79.2335,
      origin={104.5152,95.9944})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe22(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 21.7,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 65.0373,
      origin={114.1497,106.5371})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe22R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 21.7,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 65.0373,
      origin={109.1497,101.5371})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe17(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 19.0,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 79.2329,
      origin={27.6776,141.1321})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe17R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 19.0,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 79.2329,
      origin={22.6776,136.1321})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe21(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 20.3,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 358.5172,
      origin={14.2393,212.6224})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe21R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 20.3,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 358.5172,
      origin={9.2393,207.6224})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe127(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 32.9,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 355.2988,
      origin={257.9425,284.6813})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe127R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 32.9,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 355.2988,
      origin={252.9425,279.6813})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe29(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 16.0,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 267.8994,
      origin={235.888,275.9301})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe29R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 16.0,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 267.8994,
      origin={230.888,270.9301})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe128(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 33.8,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 355.2991,
      origin={301.8405,281.0714})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe128R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 33.8,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 355.2991,
      origin={296.8405,276.0714})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe24(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 37.1,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 267.8997,
      origin={278.7138,258.4419})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe24R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 37.1,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 267.8997,
      origin={273.7138,253.4419})));

  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe34(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 21.2,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 267.9001,
      origin={323.5575,265.2552})));
  AixLib.Fluid.FixedResistances.PlugFlowPipe pipepipe34R(
    redeclare package Medium = Medium,
    m_flow_nominal = 2,
    fac = 1,
    length = 21.2,
    dIns = 0.045,
    kIns = 0.05
    )
    annotation(Placement(transformation(
      extent={{-2,-2},{2,2}},
        rotation = 267.9001,
      origin={318.5575,260.2552})));

  Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature TGround
    "Ground temperature for network"
      annotation(Placement(transformation(
      extent={{-2, -2},{2, 2}},
      origin={5, 5})));

  Modelica.Blocks.Interfaces.RealInput TGroundIn(unit="K")
    "Input of prescribed ground temperature"
    annotation(Placement(
      transformation(
        extent={{-2,-2},{2,2}},
        rotation=0,
        origin={{0, 0}}),
      iconTransformation(
        extent={{-2,-2},{2,2}},
        rotation=90,
        origin={0, -100})
      ));



equation
  connect(demandB1180Sternwartestrae52.port_a, pipepipe1.port_b)
    annotation(Line(points={{235.74050439746452,71.84152318147159},{227.79036598658263,51.546877252282314}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Sternwartestrae52.port_b, pipepipe1R.port_b)
    annotation(Line(points={{230.74050439746452,66.84152318147159},{222.79036598658263,46.546877252282314}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180AnastasiusGrnGasse56.port_a, pipepipe2.port_b)
    annotation(Line(points={{222.12585157583044,222.2998500259026},{213.58178210101195,197.09155447902492}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180AnastasiusGrnGasse56.port_b, pipepipe2R.port_b)
    annotation(Line(points={{217.12585157583044,217.2998500259026},{208.58178210101195,192.09155447902492}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180AnastasiusGrnGasse52_1.port_a, pipepipe3.port_b)
    annotation(Line(points={{335.9953858697041,160.029655520234},{325.20502373383863,144.46659477533728}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180AnastasiusGrnGasse52_1.port_b, pipepipe3R.port_b)
    annotation(Line(points={{330.9953858697041,155.029655520234},{320.20502373383863,139.46659477533728}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180AnastasiusGrnGasse58.port_a, pipepipe4.port_b)
    annotation(Line(points={{188.01955747856388,221.81590189733893},{180.61460604884942,203.1032011894703}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180AnastasiusGrnGasse58.port_b, pipepipe4R.port_b)
    annotation(Line(points={{183.01955747856388,216.81590189733893},{175.61460604884942,198.1032011894703}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Colloredogasse33A_1.port_a, pipepipe5.port_b)
    annotation(Line(points={{94.77496430170774,270.5342553669617},{90.32157456117658,279.4634926848811}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Colloredogasse33A_1.port_b, pipepipe5R.port_b)
    annotation(Line(points={{89.77496430170774,265.5342553669617},{85.32157456117658,274.4634926848811}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180AnastasiusGrnGasse49.port_a, pipepipe6.port_b)
    annotation(Line(points={{223.3577701832276,153.69794186397996},{220.40174308932035,160.35268263066234}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180AnastasiusGrnGasse49.port_b, pipepipe6R.port_b)
    annotation(Line(points={{218.3577701832276,148.69794186397996},{215.40174308932035,155.35268263066234}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180AnastasiusGrnGasse54.port_a, pipepipe7.port_b)
    annotation(Line(points={{256.84386705301927,194.66979510281635},{248.70971898004515,176.29410364959242}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180AnastasiusGrnGasse54.port_b, pipepipe7R.port_b)
    annotation(Line(points={{251.84386705301927,189.66979510281635},{243.70971898004515,171.29410364959242}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Cottagegasse31.port_a, pipepipe8.port_b)
    annotation(Line(points={{319.67920475490945,111.90005047531783},{320.7310673764049,118.95414733867091}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Cottagegasse31.port_b, pipepipe8R.port_b)
    annotation(Line(points={{314.67920475490945,106.90005047531783},{315.7310673764049,113.95414733867091}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180GregorMendelStrae28_1.port_a, pipepipe9.port_b)
    annotation(Line(points={{15.389063284377452,269.226767650161},{3.444832887539265,264.4065284735272}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180GregorMendelStrae28_1.port_b, pipepipe9R.port_b)
    annotation(Line(points={{10.389063284377452,264.226767650161},{-1.555167112460735,259.4065284735272}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Colloredogasse33A_2.port_a, pipepipe10.port_b)
    annotation(Line(points={{82.72719853311807,270.6619007444869},{78.29205720254565,280.0555684244025}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Colloredogasse33A_2.port_b, pipepipe10R.port_b)
    annotation(Line(points={{77.72719853311807,265.6619007444869},{73.29205720254565,275.0555684244025}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Sternwartestrae48.port_a, pipepipe11.port_b)
    annotation(Line(points={{294.90120983705106,40.277586809999256},{287.4849940294313,22.750514517354972}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Sternwartestrae48.port_b, pipepipe11R.port_b)
    annotation(Line(points={{289.90120983705106,35.277586809999256},{282.4849940294313,17.750514517354972}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180GregorMendelStrae28_2.port_a, pipepipe12.port_b)
    annotation(Line(points={{27.60644268321744,277.16571665096797},{23.139032874030406,285.7346387741196}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180GregorMendelStrae28_2.port_b, pipepipe12R.port_b)
    annotation(Line(points={{22.60644268321744,272.16571665096797},{18.139032874030406,280.7346387741196}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Cottagegasse29.port_a, pipepipe13.port_b)
    annotation(Line(points={{318.29882622099956,73.00293397773798},{324.7347136321644,61.141258707398464}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Cottagegasse29.port_b, pipepipe13R.port_b)
    annotation(Line(points={{313.29882622099956,68.00293397773798},{319.7347136321644,56.141258707398464}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180GustavTschermakGasse3.port_a, pipepipe14.port_b)
    annotation(Line(points={{136.2713743820824,161.84464190047007},{144.64299088236362,156.61106654858563}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180GustavTschermakGasse3.port_b, pipepipe14R.port_b)
    annotation(Line(points={{131.2713743820824,156.84464190047007},{139.64299088236362,151.61106654858563}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Sternwartestrae56_1.port_a, pipepipe15.port_b)
    annotation(Line(points={{110.93385514726972,108.45473588405886},{104.5152380072286,95.99439668480562}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Sternwartestrae56_1.port_b, pipepipe15R.port_b)
    annotation(Line(points={{105.93385514726972,103.45473588405886},{99.5152380072286,90.99439668480562}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180GustavTschermakGasse4.port_a, pipepipe16.port_b)
    annotation(Line(points={{184.8516177852184,117.01976424464542},{168.76222946987644,112.213436498456}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180GustavTschermakGasse4.port_b, pipepipe16R.port_b)
    annotation(Line(points={{179.8516177852184,112.01976424464542},{163.76222946987644,107.213436498456}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Sternwartestrae60.port_a, pipepipe17.port_b)
    annotation(Line(points={{30.023499260546494,153.46847037687604},{22.67755453872539,136.13209325295128}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Sternwartestrae60.port_b, pipepipe17R.port_b)
    annotation(Line(points={{25.023499260546494,148.46847037687604},{17.67755453872539,131.13209325295128}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180AnastasiusGrnGasse51.port_a, pipepipe18.port_b)
    annotation(Line(points={{185.16777393470224,164.04387811817736},{169.09119065867353,157.7106846574393}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180AnastasiusGrnGasse51.port_b, pipepipe18R.port_b)
    annotation(Line(points={{180.16777393470224,159.04387811817736},{164.09119065867353,152.7106846574393}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180GustavTschermakGasse57.port_a, pipepipe19.port_b)
    annotation(Line(points={{115.8875301124302,208.42679456743988},{117.27502237353126,201.2604239959708}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180GustavTschermakGasse57.port_b, pipepipe19R.port_b)
    annotation(Line(points={{110.8875301124302,203.42679456743988},{112.27502237353126,196.2604239959708}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180GustavTschermakGasse9.port_a, pipepipe20.port_b)
    annotation(Line(points={{136.58187294648602,264.24049069854163},{132.17956259981526,274.4735346394878}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180GustavTschermakGasse9.port_b, pipepipe20R.port_b)
    annotation(Line(points={{131.58187294648602,259.24049069854163},{127.17956259981526,269.4735346394878}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180GregorMendelStrae24.port_a, pipepipe21.port_b)
    annotation(Line(points={{27.6316227869044,212.27569238415467},{9.239341306067224,207.62235682309645}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180GregorMendelStrae24.port_b, pipepipe21R.port_b)
    annotation(Line(points={{22.6316227869044,207.27569238415467},{4.2393413060672245,202.62235682309645}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Sternwartestrae56_2.port_a, pipepipe22.port_b)
    annotation(Line(points={{120.20283603643207,119.54016200455874},{109.14972845180978,101.53710974505556}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Sternwartestrae56_2.port_b, pipepipe22R.port_b)
    annotation(Line(points={{115.20283603643207,114.54016200455874},{104.14972845180978,96.53710974505556}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Colloredogasse29.port_a, pipepipe23.port_b)
    annotation(Line(points={{195.1975871483127,264.10860691898284},{190.66816136041464,271.9363388723463}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Colloredogasse29.port_b, pipepipe23R.port_b)
    annotation(Line(points={{190.1975871483127,259.10860691898284},{185.66816136041464,266.9363388723463}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Colloredogasse.port_a, pipepipe24.port_b)
    annotation(Line(points={{277.81682313715686,233.98434460227847},{273.7137586841434,253.4418781734651}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Colloredogasse.port_b, pipepipe24R.port_b)
    annotation(Line(points={{272.81682313715686,228.98434460227847},{268.7137586841434,248.4418781734651}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Sternwartestrae58.port_a, pipepipe25.port_b)
    annotation(Line(points={{75.44122245661768,141.2940819475176},{67.46420893845615,120.63867806708829}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Sternwartestrae58.port_b, pipepipe25R.port_b)
    annotation(Line(points={{70.44122245661768,136.2940819475176},{62.46420893845615,115.63867806708829}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180AnastasiusGrnGasse47.port_a, pipepipe26.port_b)
    annotation(Line(points={{244.72521415285377,134.55914044118512},{243.38797994994025,145.94893862567233}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180AnastasiusGrnGasse47.port_b, pipepipe26R.port_b)
    annotation(Line(points={{239.72521415285377,129.55914044118512},{238.38797994994025,140.94893862567233}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Colloredogasse25.port_a, pipepipe27.port_b)
    annotation(Line(points={{360.8907265306117,244.18872479165725},{356.47606129114047,255.154192484889}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Colloredogasse25.port_b, pipepipe27R.port_b)
    annotation(Line(points={{355.8907265306117,239.18872479165725},{351.47606129114047,250.154192484889}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180GregorMendelStrae26.port_a, pipepipe28.port_b)
    annotation(Line(points={{32.492113000662236,241.56852752366294},{11.839328465949187,236.97370002162035}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180GregorMendelStrae26.port_b, pipepipe28R.port_b)
    annotation(Line(points={{27.492113000662236,236.56852752366294},{6.839328465949187,231.97370002162035}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Colloredogasse27.port_a, pipepipe29.port_b)
    annotation(Line(points={{235.50165048030132,265.39690291199327},{230.88799495476027,270.93007031916727}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Colloredogasse27.port_b, pipepipe29R.port_b)
    annotation(Line(points={{230.50165048030132,260.39690291199327},{225.88799495476027,265.93007031916727}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180GustavTschermakGasse6.port_a, pipepipe30.port_b)
    annotation(Line(points={{184.12675120489968,140.43577242123308},{168.4907370695031,135.62152766146477}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180GustavTschermakGasse6.port_b, pipepipe30R.port_b)
    annotation(Line(points={{179.12675120489968,135.43577242123308},{163.4907370695031,130.62152766146477}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Cottagegasse27.port_a, pipepipe31.port_b)
    annotation(Line(points={{324.1506174055991,31.90093807615381},{323.3239820301069,24.396879313115086}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Cottagegasse27.port_b, pipepipe31R.port_b)
    annotation(Line(points={{319.1506174055991,26.90093807615381},{318.3239820301069,19.396879313115086}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Colloredogasse31.port_a, pipepipe32.port_b)
    annotation(Line(points={{120.13423363672777,264.6065353166208},{115.75308720112942,275.37801514550245}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Colloredogasse31.port_b, pipepipe32R.port_b)
    annotation(Line(points={{115.13423363672777,259.6065353166208},{110.75308720112942,270.37801514550245}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Sternwartestrae54.port_a, pipepipe33.port_b)
    annotation(Line(points={{186.33179877981766,86.61497998830522},{178.9673442647222,69.35713601165973}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Sternwartestrae54.port_b, pipepipe33R.port_b)
    annotation(Line(points={{181.33179877981766,81.61497998830522},{173.9673442647222,64.35713601165973}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Colloredogasse25A.port_a, pipepipe34.port_b)
    annotation(Line(points={{323.04456218220645,251.26696541998587},{318.55747139561726,260.255217504678}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Colloredogasse25A.port_b, pipepipe34R.port_b)
    annotation(Line(points={{318.04456218220645,246.26696541998587},{313.55747139561726,255.255217504678}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Sternwartestrae50.port_a, pipepipe35.port_b)
    annotation(Line(points={{267.177663422286,50.90586730559938},{259.8818370711821,34.00318561882581}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180Sternwartestrae50.port_b, pipepipe35R.port_b)
    annotation(Line(points={{262.177663422286,45.90586730559938},{254.88183707118208,29.00318561882581}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180AnastasiusGrnGasse52_2.port_a, pipepipe36.port_b)
    annotation(Line(points={{307.1082615858626,196.399055278997},{297.9497198414897,167.6855814588485}}, color={0,127,255}, thickness=0.5));
  connect(demandB1180AnastasiusGrnGasse52_2.port_b, pipepipe36R.port_b)
    annotation(Line(points={{302.1082615858626,191.399055278997},{292.9497198414897,162.6855814588485}}, color={0,127,255}, thickness=0.5));
  connect(supplyB1180GregorMendelStrae22.port_b, pipepipe37.port_b)
    annotation(Line(points={{28.76135836423043,186.15328495109205},{9.653653505430945,181.5184670743107}}, color={0,127,255}, thickness=0.5));
  connect(supplyB1180GregorMendelStrae22.port_a, pipepipe37R.port_b)
    annotation(Line(points={{23.76135836423043,181.15328495109205},{4.653653505430945,176.5184670743107}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe85.port_a, pipepipe86.port_a)
    annotation(Line(points={{323.89633557719895,8.44641027503818},{302.6820513607974,2.611721112355342}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe85R.port_a, pipepipe86R.port_a)
    annotation(Line(points={{323.89633557719895,8.44641027503818},{302.6820513607974,2.611721112355342}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe85.port_b, pipepipe87.port_a)
    annotation(Line(points={{323.89633557719895,8.44641027503818},{331.83397384897194,38.08620199356765}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe85R.port_b, pipepipe87R.port_a)
    annotation(Line(points={{323.89633557719895,8.44641027503818},{331.83397384897194,38.08620199356765}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe85.port_b, pipepipe31.port_a)
    annotation(Line(points={{323.89633557719895,8.44641027503818},{323.3239820301069,24.396879313115086}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe85R.port_b, pipepipe31R.port_a)
    annotation(Line(points={{323.89633557719895,8.44641027503818},{323.3239820301069,24.396879313115086}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe86.port_b, pipepipe88.port_a)
    annotation(Line(points={{302.6820513607974,2.611721112355342},{271.32739447094485,16.161973078381465}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe86R.port_b, pipepipe88R.port_a)
    annotation(Line(points={{302.6820513607974,2.611721112355342},{271.32739447094485,16.161973078381465}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe86.port_b, pipepipe11.port_a)
    annotation(Line(points={{302.6820513607974,2.611721112355342},{287.4849940294313,22.750514517354972}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe86R.port_b, pipepipe11R.port_a)
    annotation(Line(points={{302.6820513607974,2.611721112355342},{287.4849940294313,22.750514517354972}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe87.port_b, pipepipe113.port_b)
    annotation(Line(points={{331.83397384897194,38.08620199356765},{345.01945114363343,87.3224870080044}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe87R.port_b, pipepipe113R.port_b)
    annotation(Line(points={{331.83397384897194,38.08620199356765},{345.01945114363343,87.3224870080044}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe87.port_b, pipepipe13.port_a)
    annotation(Line(points={{331.83397384897194,38.08620199356765},{324.7347136321644,61.141258707398464}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe87R.port_b, pipepipe13R.port_a)
    annotation(Line(points={{331.83397384897194,38.08620199356765},{324.7347136321644,61.141258707398464}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe88.port_b, pipepipe116.port_b)
    annotation(Line(points={{271.32739447094485,16.161973078381465},{241.21311914788947,29.176367627572645}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe88R.port_b, pipepipe116R.port_b)
    annotation(Line(points={{271.32739447094485,16.161973078381465},{241.21311914788947,29.176367627572645}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe88.port_b, pipepipe35.port_a)
    annotation(Line(points={{271.32739447094485,16.161973078381465},{259.8818370711821,34.00318561882581}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe88R.port_b, pipepipe35R.port_a)
    annotation(Line(points={{271.32739447094485,16.161973078381465},{259.8818370711821,34.00318561882581}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe89.port_a, pipepipe90.port_a)
    annotation(Line(points={{-4.72702567668427,158.23601555630023},{52.36051415952838,110.15009709634447}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe89R.port_a, pipepipe90R.port_a)
    annotation(Line(points={{-4.72702567668427,158.23601555630023},{52.36051415952838,110.15009709634447}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe89.port_b, pipepipe91.port_a)
    annotation(Line(points={{-4.72702567668427,158.23601555630023},{-4.303495764069246,194.9263352297838}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe89R.port_b, pipepipe91R.port_a)
    annotation(Line(points={{-4.72702567668427,158.23601555630023},{-4.303495764069246,194.9263352297838}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe89.port_b, pipepipe37.port_a)
    annotation(Line(points={{-4.72702567668427,158.23601555630023},{9.653653505430945,181.5184670743107}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe89R.port_b, pipepipe37R.port_a)
    annotation(Line(points={{-4.72702567668427,158.23601555630023},{9.653653505430945,181.5184670743107}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe90.port_b, pipepipe92.port_a)
    annotation(Line(points={{52.36051415952838,110.15009709634447},{106.40882459312212,87.12293488158511}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe90R.port_b, pipepipe92R.port_a)
    annotation(Line(points={{52.36051415952838,110.15009709634447},{106.40882459312212,87.12293488158511}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe91.port_b, pipepipe125.port_b)
    annotation(Line(points={{-4.303495764069246,194.9263352297838},{-3.983198121766906,222.673946890808}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe91R.port_b, pipepipe125R.port_b)
    annotation(Line(points={{-4.303495764069246,194.9263352297838},{-3.983198121766906,222.673946890808}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe91.port_b, pipepipe21.port_a)
    annotation(Line(points={{-4.303495764069246,194.9263352297838},{9.239341306067224,207.62235682309645}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe91R.port_b, pipepipe21R.port_a)
    annotation(Line(points={{-4.303495764069246,194.9263352297838},{9.239341306067224,207.62235682309645}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe92.port_b, pipepipe126.port_a)
    annotation(Line(points={{106.40882459312212,87.12293488158511},{61.714115342045886,106.16488680728946}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe92R.port_b, pipepipe126R.port_a)
    annotation(Line(points={{106.40882459312212,87.12293488158511},{61.714115342045886,106.16488680728946}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe92.port_b, pipepipe15.port_a)
    annotation(Line(points={{106.40882459312212,87.12293488158511},{104.5152380072286,95.99439668480562}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe92R.port_b, pipepipe15R.port_a)
    annotation(Line(points={{106.40882459312212,87.12293488158511},{104.5152380072286,95.99439668480562}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe92.port_b, pipepipe22.port_a)
    annotation(Line(points={{106.40882459312212,87.12293488158511},{109.14972845180978,101.53710974505556}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe92R.port_b, pipepipe22R.port_a)
    annotation(Line(points={{106.40882459312212,87.12293488158511},{109.14972845180978,101.53710974505556}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe93.port_a, pipepipe94.port_a)
    annotation(Line(points={{-3.2854484062177107,283.1212163236095},{64.85287647500398,295.6813609653797}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe93R.port_a, pipepipe94R.port_a)
    annotation(Line(points={{-3.2854484062177107,283.1212163236095},{64.85287647500398,295.6813609653797}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe93.port_b, pipepipe95.port_a)
    annotation(Line(points={{-3.2854484062177107,283.1212163236095},{-3.6564267890313893,250.98258090823563}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe93R.port_b, pipepipe95R.port_a)
    annotation(Line(points={{-3.2854484062177107,283.1212163236095},{-3.6564267890313893,250.98258090823563}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe93.port_b, pipepipe9.port_a)
    annotation(Line(points={{-3.2854484062177107,283.1212163236095},{3.444832887539265,264.4065284735272}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe93R.port_b, pipepipe9R.port_a)
    annotation(Line(points={{-3.2854484062177107,283.1212163236095},{3.444832887539265,264.4065284735272}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe94.port_b, pipepipe96.port_a)
    annotation(Line(points={{64.85287647500398,295.6813609653797},{124.57459650933777,290.42803677740903}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe94R.port_b, pipepipe96R.port_a)
    annotation(Line(points={{64.85287647500398,295.6813609653797},{124.57459650933777,290.42803677740903}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe94.port_b, pipepipe20.port_a)
    annotation(Line(points={{64.85287647500398,295.6813609653797},{132.17956259981526,274.4735346394878}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe94R.port_b, pipepipe20R.port_a)
    annotation(Line(points={{64.85287647500398,295.6813609653797},{132.17956259981526,274.4735346394878}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe95.port_b, pipepipe125.port_a)
    annotation(Line(points={{-3.6564267890313893,250.98258090823563},{-3.983198121766906,222.673946890808}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe95R.port_b, pipepipe125R.port_a)
    annotation(Line(points={{-3.6564267890313893,250.98258090823563},{-3.983198121766906,222.673946890808}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe95.port_b, pipepipe28.port_a)
    annotation(Line(points={{-3.6564267890313893,250.98258090823563},{11.839328465949187,236.97370002162035}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe95R.port_b, pipepipe28R.port_a)
    annotation(Line(points={{-3.6564267890313893,250.98258090823563},{11.839328465949187,236.97370002162035}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe96.port_b, pipepipe121.port_b)
    annotation(Line(points={{124.57459650933777,290.42803677740903},{103.62006279308824,292.2711124885923}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe96R.port_b, pipepipe121R.port_b)
    annotation(Line(points={{124.57459650933777,290.42803677740903},{103.62006279308824,292.2711124885923}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe96.port_b, pipepipe32.port_a)
    annotation(Line(points={{124.57459650933777,290.42803677740903},{115.75308720112942,275.37801514550245}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe96R.port_b, pipepipe32R.port_a)
    annotation(Line(points={{124.57459650933777,290.42803677740903},{115.75308720112942,275.37801514550245}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe97.port_a, pipepipe98.port_a)
    annotation(Line(points={{118.30316435457243,290.97973869720965},{257.40540444442047,279.314950734111}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe97R.port_a, pipepipe98R.port_a)
    annotation(Line(points={{118.30316435457243,290.97973869720965},{257.40540444442047,279.314950734111}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe97.port_b, pipepipe99.port_a)
    annotation(Line(points={{118.30316435457243,290.97973869720965},{51.26426946840828,296.8763985007946}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe97R.port_b, pipepipe99R.port_a)
    annotation(Line(points={{118.30316435457243,290.97973869720965},{51.26426946840828,296.8763985007946}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe97.port_b, pipepipe10.port_a)
    annotation(Line(points={{118.30316435457243,290.97973869720965},{78.29205720254565,280.0555684244025}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe97R.port_b, pipepipe10R.port_a)
    annotation(Line(points={{118.30316435457243,290.97973869720965},{78.29205720254565,280.0555684244025}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe98.port_b, pipepipe100.port_a)
    annotation(Line(points={{257.40540444442047,279.314950734111},{338.0658883303487,272.6815648837454}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe98R.port_b, pipepipe100R.port_a)
    annotation(Line(points={{257.40540444442047,279.314950734111},{338.0658883303487,272.6815648837454}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe98.port_b, pipepipe27.port_a)
    annotation(Line(points={{257.40540444442047,279.314950734111},{356.47606129114047,255.154192484889}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe98R.port_b, pipepipe27R.port_a)
    annotation(Line(points={{257.40540444442047,279.314950734111},{356.47606129114047,255.154192484889}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe99.port_b, pipepipe122.port_b)
    annotation(Line(points={{51.26426946840828,296.8763985007946},{57.26990394274439,296.3481454500359}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe99R.port_b, pipepipe122R.port_b)
    annotation(Line(points={{51.26426946840828,296.8763985007946},{57.26990394274439,296.3481454500359}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe99.port_b, pipepipe12.port_a)
    annotation(Line(points={{51.26426946840828,296.8763985007946},{23.139032874030406,285.7346387741196}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe99R.port_b, pipepipe12R.port_a)
    annotation(Line(points={{51.26426946840828,296.8763985007946},{23.139032874030406,285.7346387741196}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe100.port_b, pipepipe128.port_b)
    annotation(Line(points={{338.0658883303487,272.6815648837454},{296.840537420079,276.07144066701096}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe100R.port_b, pipepipe128R.port_b)
    annotation(Line(points={{338.0658883303487,272.6815648837454},{296.840537420079,276.07144066701096}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe100.port_b, pipepipe34.port_a)
    annotation(Line(points={{338.0658883303487,272.6815648837454},{318.55747139561726,260.255217504678}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe100R.port_b, pipepipe34R.port_a)
    annotation(Line(points={{338.0658883303487,272.6815648837454},{318.55747139561726,260.255217504678}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe101.port_b, pipepipe102.port_a)
    annotation(Line(points={{293.06936778625834,276.38221245310774},{211.20653750086797,283.11365427602556}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe101R.port_b, pipepipe102R.port_a)
    annotation(Line(points={{293.06936778625834,276.38221245310774},{211.20653750086797,283.11365427602556}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe101.port_b, pipepipe23.port_a)
    annotation(Line(points={{293.06936778625834,276.38221245310774},{190.66816136041464,271.9363388723463}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe101R.port_b, pipepipe23R.port_a)
    annotation(Line(points={{293.06936778625834,276.38221245310774},{190.66816136041464,271.9363388723463}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe102.port_b, pipepipe127.port_a)
    annotation(Line(points={{211.20653750086797,283.11365427602556},{252.94251683017455,279.68132473549656}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe102R.port_b, pipepipe127R.port_a)
    annotation(Line(points={{211.20653750086797,283.11365427602556},{252.94251683017455,279.68132473549656}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe102.port_b, pipepipe29.port_a)
    annotation(Line(points={{211.20653750086797,283.11365427602556},{230.88799495476027,270.93007031916727}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe102R.port_b, pipepipe29R.port_a)
    annotation(Line(points={{211.20653750086797,283.11365427602556},{230.88799495476027,270.93007031916727}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe103.port_a, pipepipe104.port_a)
    annotation(Line(points={{157.66118613366746,110.90790421817096},{110.89748015249239,85.21079571314982}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe103R.port_a, pipepipe104R.port_a)
    annotation(Line(points={{157.66118613366746,110.90790421817096},{110.89748015249239,85.21079571314982}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe103.port_b, pipepipe105.port_a)
    annotation(Line(points={{157.66118613366746,110.90790421817096},{157.84372426858965,134.39229997448393}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe103R.port_b, pipepipe105R.port_a)
    annotation(Line(points={{157.66118613366746,110.90790421817096},{157.84372426858965,134.39229997448393}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe103.port_b, pipepipe14.port_a)
    annotation(Line(points={{157.66118613366746,110.90790421817096},{144.64299088236362,156.61106654858563}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe103R.port_b, pipepipe14R.port_a)
    annotation(Line(points={{157.66118613366746,110.90790421817096},{144.64299088236362,156.61106654858563}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe103.port_b, pipepipe18.port_a)
    annotation(Line(points={{157.66118613366746,110.90790421817096},{169.09119065867353,157.7106846574393}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe103R.port_b, pipepipe18R.port_a)
    annotation(Line(points={{157.66118613366746,110.90790421817096},{169.09119065867353,157.7106846574393}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe104.port_b, pipepipe106.port_a)
    annotation(Line(points={{110.89748015249239,85.21079571314982},{42.40940261859946,114.38949515784276}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe104R.port_b, pipepipe106R.port_a)
    annotation(Line(points={{110.89748015249239,85.21079571314982},{42.40940261859946,114.38949515784276}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe104.port_b, pipepipe25.port_a)
    annotation(Line(points={{110.89748015249239,85.21079571314982},{67.46420893845615,120.63867806708829}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe104R.port_b, pipepipe25R.port_a)
    annotation(Line(points={{110.89748015249239,85.21079571314982},{67.46420893845615,120.63867806708829}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe105.port_b, pipepipe110.port_b)
    annotation(Line(points={{157.84372426858965,134.39229997448393},{157.7637820443205,124.10719582698155}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe105R.port_b, pipepipe110R.port_b)
    annotation(Line(points={{157.84372426858965,134.39229997448393},{157.7637820443205,124.10719582698155}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe105.port_b, pipepipe16.port_a)
    annotation(Line(points={{157.84372426858965,134.39229997448393},{168.76222946987644,112.213436498456}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe105R.port_b, pipepipe16R.port_a)
    annotation(Line(points={{157.84372426858965,134.39229997448393},{168.76222946987644,112.213436498456}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe106.port_b, pipepipe126.port_b)
    annotation(Line(points={{42.40940261859946,114.38949515784276},{61.714115342045886,106.16488680728946}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe106R.port_b, pipepipe126R.port_b)
    annotation(Line(points={{42.40940261859946,114.38949515784276},{61.714115342045886,106.16488680728946}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe106.port_b, pipepipe17.port_a)
    annotation(Line(points={{42.40940261859946,114.38949515784276},{22.67755453872539,136.13209325295128}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe106R.port_b, pipepipe17R.port_a)
    annotation(Line(points={{42.40940261859946,114.38949515784276},{22.67755453872539,136.13209325295128}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe107.port_a, pipepipe108.port_a)
    annotation(Line(points={{158.0933198048748,166.5045417669018},{168.27078564738903,193.2961505568544}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe107R.port_a, pipepipe108R.port_a)
    annotation(Line(points={{158.0933198048748,166.5045417669018},{168.27078564738903,193.2961505568544}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe107.port_a, pipepipe109.port_a)
    annotation(Line(points={{158.0933198048748,166.5045417669018},{140.99721565513772,198.14792702830442}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe107R.port_a, pipepipe109R.port_a)
    annotation(Line(points={{158.0933198048748,166.5045417669018},{140.99721565513772,198.14792702830442}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe107.port_b, pipepipe110.port_a)
    annotation(Line(points={{158.0933198048748,166.5045417669018},{157.7637820443205,124.10719582698155}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe107R.port_b, pipepipe110R.port_a)
    annotation(Line(points={{158.0933198048748,166.5045417669018},{157.7637820443205,124.10719582698155}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe107.port_b, pipepipe30.port_a)
    annotation(Line(points={{158.0933198048748,166.5045417669018},{168.4907370695031,135.62152766146477}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe107R.port_b, pipepipe30R.port_a)
    annotation(Line(points={{158.0933198048748,166.5045417669018},{168.4907370695031,135.62152766146477}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe108.port_b, pipepipe111.port_a)
    annotation(Line(points={{168.27078564738903,193.2961505568544},{181.61513424530492,188.0522663987665}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe108R.port_b, pipepipe111R.port_a)
    annotation(Line(points={{168.27078564738903,193.2961505568544},{181.61513424530492,188.0522663987665}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe108.port_b, pipepipe4.port_a)
    annotation(Line(points={{168.27078564738903,193.2961505568544},{180.61460604884942,203.1032011894703}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe108R.port_b, pipepipe4R.port_a)
    annotation(Line(points={{168.27078564738903,193.2961505568544},{180.61460604884942,203.1032011894703}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe109.port_b, pipepipe19.port_a)
    annotation(Line(points={{140.99721565513772,198.14792702830442},{117.27502237353126,201.2604239959708}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe109R.port_b, pipepipe19R.port_a)
    annotation(Line(points={{140.99721565513772,198.14792702830442},{117.27502237353126,201.2604239959708}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe111.port_b, pipepipe117.port_b)
    annotation(Line(points={{181.61513424530492,188.0522663987665},{197.52916324883415,181.7986456240393}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe111R.port_b, pipepipe117R.port_b)
    annotation(Line(points={{181.61513424530492,188.0522663987665},{197.52916324883415,181.7986456240393}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe112.port_a, pipepipe113.port_a)
    annotation(Line(points={{288.15700861967537,146.1864069881473},{345.01945114363343,87.3224870080044}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe112R.port_a, pipepipe113R.port_a)
    annotation(Line(points={{288.15700861967537,146.1864069881473},{345.01945114363343,87.3224870080044}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe112.port_b, pipepipe114.port_a)
    annotation(Line(points={{288.15700861967537,146.1864069881473},{258.1184470462649,157.98976551802235}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe112R.port_b, pipepipe114R.port_a)
    annotation(Line(points={{288.15700861967537,146.1864069881473},{258.1184470462649,157.98976551802235}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe112.port_b, pipepipe6.port_a)
    annotation(Line(points={{288.15700861967537,146.1864069881473},{220.40174308932035,160.35268263066234}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe112R.port_b, pipepipe6R.port_a)
    annotation(Line(points={{288.15700861967537,146.1864069881473},{220.40174308932035,160.35268263066234}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe114.port_b, pipepipe123.port_a)
    annotation(Line(points={{258.1184470462649,157.98976551802235},{306.60291984754497,138.9378208345703}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe114R.port_b, pipepipe123R.port_a)
    annotation(Line(points={{258.1184470462649,157.98976551802235},{306.60291984754497,138.9378208345703}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe114.port_b, pipepipe36.port_a)
    annotation(Line(points={{258.1184470462649,157.98976551802235},{297.9497198414897,167.6855814588485}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe114R.port_b, pipepipe36R.port_a)
    annotation(Line(points={{258.1184470462649,157.98976551802235},{297.9497198414897,167.6855814588485}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe115.port_a, pipepipe116.port_a)
    annotation(Line(points={{200.72155866266374,46.67576167905365},{241.21311914788947,29.176367627572645}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe115R.port_a, pipepipe116R.port_a)
    annotation(Line(points={{200.72155866266374,46.67576167905365},{241.21311914788947,29.176367627572645}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe115.port_a, pipepipe1.port_a)
    annotation(Line(points={{200.72155866266374,46.67576167905365},{227.79036598658263,51.546877252282314}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe115R.port_a, pipepipe1R.port_a)
    annotation(Line(points={{200.72155866266374,46.67576167905365},{227.79036598658263,51.546877252282314}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe115.port_b, pipepipe33.port_a)
    annotation(Line(points={{200.72155866266374,46.67576167905365},{178.9673442647222,69.35713601165973}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe115R.port_b, pipepipe33R.port_a)
    annotation(Line(points={{200.72155866266374,46.67576167905365},{178.9673442647222,69.35713601165973}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe117.port_a, pipepipe118.port_a)
    annotation(Line(points={{197.52916324883415,181.7986456240393},{268.41032131204685,153.9457515670856}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe117R.port_a, pipepipe118R.port_a)
    annotation(Line(points={{197.52916324883415,181.7986456240393},{268.41032131204685,153.9457515670856}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe117.port_a, pipepipe2.port_a)
    annotation(Line(points={{197.52916324883415,181.7986456240393},{213.58178210101195,197.09155447902492}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe117R.port_a, pipepipe2R.port_a)
    annotation(Line(points={{197.52916324883415,181.7986456240393},{213.58178210101195,197.09155447902492}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe118.port_b, pipepipe119.port_a)
    annotation(Line(points={{268.41032131204685,153.9457515670856},{286.1792504524857,146.96332819919624}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe118R.port_b, pipepipe119R.port_a)
    annotation(Line(points={{268.41032131204685,153.9457515670856},{286.1792504524857,146.96332819919624}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe118.port_b, pipepipe8.port_a)
    annotation(Line(points={{268.41032131204685,153.9457515670856},{320.7310673764049,118.95414733867091}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe118R.port_b, pipepipe8R.port_a)
    annotation(Line(points={{268.41032131204685,153.9457515670856},{320.7310673764049,118.95414733867091}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe119.port_b, pipepipe120.port_a)
    annotation(Line(points={{286.1792504524857,146.96332819919624},{246.31315832704888,162.62857450326402}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe119R.port_b, pipepipe120R.port_a)
    annotation(Line(points={{286.1792504524857,146.96332819919624},{246.31315832704888,162.62857450326402}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe119.port_b, pipepipe7.port_a)
    annotation(Line(points={{286.1792504524857,146.96332819919624},{248.70971898004515,176.29410364959242}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe119R.port_b, pipepipe7R.port_a)
    annotation(Line(points={{286.1792504524857,146.96332819919624},{248.70971898004515,176.29410364959242}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe120.port_b, pipepipe124.port_a)
    annotation(Line(points={{246.31315832704888,162.62857450326402},{283.23270367249995,148.12113542030005}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe120R.port_b, pipepipe124R.port_a)
    annotation(Line(points={{246.31315832704888,162.62857450326402},{283.23270367249995,148.12113542030005}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe120.port_b, pipepipe26.port_a)
    annotation(Line(points={{246.31315832704888,162.62857450326402},{243.38797994994025,145.94893862567233}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe120R.port_b, pipepipe26R.port_a)
    annotation(Line(points={{246.31315832704888,162.62857450326402},{243.38797994994025,145.94893862567233}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe121.port_a, pipepipe122.port_a)
    annotation(Line(points={{103.62006279308824,292.2711124885923},{57.26990394274439,296.3481454500359}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe121R.port_a, pipepipe122R.port_a)
    annotation(Line(points={{103.62006279308824,292.2711124885923},{57.26990394274439,296.3481454500359}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe121.port_a, pipepipe5.port_a)
    annotation(Line(points={{103.62006279308824,292.2711124885923},{90.32157456117658,279.4634926848811}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe121R.port_a, pipepipe5R.port_a)
    annotation(Line(points={{103.62006279308824,292.2711124885923},{90.32157456117658,279.4634926848811}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe123.port_b, pipepipe124.port_b)
    annotation(Line(points={{306.60291984754497,138.9378208345703},{283.23270367249995,148.12113542030005}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe123R.port_b, pipepipe124R.port_b)
    annotation(Line(points={{306.60291984754497,138.9378208345703},{283.23270367249995,148.12113542030005}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe123.port_b, pipepipe3.port_a)
    annotation(Line(points={{306.60291984754497,138.9378208345703},{325.20502373383863,144.46659477533728}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe123R.port_b, pipepipe3R.port_a)
    annotation(Line(points={{306.60291984754497,138.9378208345703},{325.20502373383863,144.46659477533728}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe127.port_b, pipepipe128.port_a)
    annotation(Line(points={{252.94251683017455,279.68132473549656},{296.840537420079,276.07144066701096}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe127R.port_b, pipepipe128R.port_a)
    annotation(Line(points={{252.94251683017455,279.68132473549656},{296.840537420079,276.07144066701096}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe127.port_b, pipepipe24.port_a)
    annotation(Line(points={{252.94251683017455,279.68132473549656},{273.7137586841434,253.4418781734651}}, color={0,127,255}, thickness=0.5));
  connect(pipepipe127R.port_b, pipepipe24R.port_a)
    annotation(Line(points={{252.94251683017455,279.68132473549656},{273.7137586841434,253.4418781734651}}, color={0,127,255}, thickness=0.5));

  connect(B1180Sternwartestrae52Q_flow_input, demandB1180Sternwartestrae52.Q_flow_input);
  connect(B1180AnastasiusGrnGasse56Q_flow_input, demandB1180AnastasiusGrnGasse56.Q_flow_input);
  connect(B1180AnastasiusGrnGasse52_1Q_flow_input, demandB1180AnastasiusGrnGasse52_1.Q_flow_input);
  connect(B1180AnastasiusGrnGasse58Q_flow_input, demandB1180AnastasiusGrnGasse58.Q_flow_input);
  connect(B1180Colloredogasse33A_1Q_flow_input, demandB1180Colloredogasse33A_1.Q_flow_input);
  connect(B1180AnastasiusGrnGasse49Q_flow_input, demandB1180AnastasiusGrnGasse49.Q_flow_input);
  connect(B1180AnastasiusGrnGasse54Q_flow_input, demandB1180AnastasiusGrnGasse54.Q_flow_input);
  connect(B1180Cottagegasse31Q_flow_input, demandB1180Cottagegasse31.Q_flow_input);
  connect(B1180GregorMendelStrae28_1Q_flow_input, demandB1180GregorMendelStrae28_1.Q_flow_input);
  connect(B1180Colloredogasse33A_2Q_flow_input, demandB1180Colloredogasse33A_2.Q_flow_input);
  connect(B1180Sternwartestrae48Q_flow_input, demandB1180Sternwartestrae48.Q_flow_input);
  connect(B1180GregorMendelStrae28_2Q_flow_input, demandB1180GregorMendelStrae28_2.Q_flow_input);
  connect(B1180Cottagegasse29Q_flow_input, demandB1180Cottagegasse29.Q_flow_input);
  connect(B1180GustavTschermakGasse3Q_flow_input, demandB1180GustavTschermakGasse3.Q_flow_input);
  connect(B1180Sternwartestrae56_1Q_flow_input, demandB1180Sternwartestrae56_1.Q_flow_input);
  connect(B1180GustavTschermakGasse4Q_flow_input, demandB1180GustavTschermakGasse4.Q_flow_input);
  connect(B1180Sternwartestrae60Q_flow_input, demandB1180Sternwartestrae60.Q_flow_input);
  connect(B1180AnastasiusGrnGasse51Q_flow_input, demandB1180AnastasiusGrnGasse51.Q_flow_input);
  connect(B1180GustavTschermakGasse57Q_flow_input, demandB1180GustavTschermakGasse57.Q_flow_input);
  connect(B1180GustavTschermakGasse9Q_flow_input, demandB1180GustavTschermakGasse9.Q_flow_input);
  connect(B1180GregorMendelStrae24Q_flow_input, demandB1180GregorMendelStrae24.Q_flow_input);
  connect(B1180Sternwartestrae56_2Q_flow_input, demandB1180Sternwartestrae56_2.Q_flow_input);
  connect(B1180Colloredogasse29Q_flow_input, demandB1180Colloredogasse29.Q_flow_input);
  connect(B1180ColloredogasseQ_flow_input, demandB1180Colloredogasse.Q_flow_input);
  connect(B1180Sternwartestrae58Q_flow_input, demandB1180Sternwartestrae58.Q_flow_input);
  connect(B1180AnastasiusGrnGasse47Q_flow_input, demandB1180AnastasiusGrnGasse47.Q_flow_input);
  connect(B1180Colloredogasse25Q_flow_input, demandB1180Colloredogasse25.Q_flow_input);
  connect(B1180GregorMendelStrae26Q_flow_input, demandB1180GregorMendelStrae26.Q_flow_input);
  connect(B1180Colloredogasse27Q_flow_input, demandB1180Colloredogasse27.Q_flow_input);
  connect(B1180GustavTschermakGasse6Q_flow_input, demandB1180GustavTschermakGasse6.Q_flow_input);
  connect(B1180Cottagegasse27Q_flow_input, demandB1180Cottagegasse27.Q_flow_input);
  connect(B1180Colloredogasse31Q_flow_input, demandB1180Colloredogasse31.Q_flow_input);
  connect(B1180Sternwartestrae54Q_flow_input, demandB1180Sternwartestrae54.Q_flow_input);
  connect(B1180Colloredogasse25AQ_flow_input, demandB1180Colloredogasse25A.Q_flow_input);
  connect(B1180Sternwartestrae50Q_flow_input, demandB1180Sternwartestrae50.Q_flow_input);
  connect(B1180AnastasiusGrnGasse52_2Q_flow_input, demandB1180AnastasiusGrnGasse52_2.Q_flow_input);

  connect(B1180GregorMendelStrae22TIn, supplyB1180GregorMendelStrae22.TIn);
  connect(B1180GregorMendelStrae22dpIn, supplyB1180GregorMendelStrae22.dpIn);

  connect(TGroundIn, TGround.T);

  connect(TGround.port, pipepipe85.heatPort);
  connect(TGround.port, pipepipe85R.heatPort);
  connect(TGround.port, pipepipe86.heatPort);
  connect(TGround.port, pipepipe86R.heatPort);
  connect(TGround.port, pipepipe87.heatPort);
  connect(TGround.port, pipepipe87R.heatPort);
  connect(TGround.port, pipepipe31.heatPort);
  connect(TGround.port, pipepipe31R.heatPort);
  connect(TGround.port, pipepipe88.heatPort);
  connect(TGround.port, pipepipe88R.heatPort);
  connect(TGround.port, pipepipe11.heatPort);
  connect(TGround.port, pipepipe11R.heatPort);
  connect(TGround.port, pipepipe89.heatPort);
  connect(TGround.port, pipepipe89R.heatPort);
  connect(TGround.port, pipepipe90.heatPort);
  connect(TGround.port, pipepipe90R.heatPort);
  connect(TGround.port, pipepipe91.heatPort);
  connect(TGround.port, pipepipe91R.heatPort);
  connect(TGround.port, pipepipe37.heatPort);
  connect(TGround.port, pipepipe37R.heatPort);
  connect(TGround.port, pipepipe92.heatPort);
  connect(TGround.port, pipepipe92R.heatPort);
  connect(TGround.port, pipepipe93.heatPort);
  connect(TGround.port, pipepipe93R.heatPort);
  connect(TGround.port, pipepipe94.heatPort);
  connect(TGround.port, pipepipe94R.heatPort);
  connect(TGround.port, pipepipe95.heatPort);
  connect(TGround.port, pipepipe95R.heatPort);
  connect(TGround.port, pipepipe9.heatPort);
  connect(TGround.port, pipepipe9R.heatPort);
  connect(TGround.port, pipepipe96.heatPort);
  connect(TGround.port, pipepipe96R.heatPort);
  connect(TGround.port, pipepipe20.heatPort);
  connect(TGround.port, pipepipe20R.heatPort);
  connect(TGround.port, pipepipe97.heatPort);
  connect(TGround.port, pipepipe97R.heatPort);
  connect(TGround.port, pipepipe98.heatPort);
  connect(TGround.port, pipepipe98R.heatPort);
  connect(TGround.port, pipepipe99.heatPort);
  connect(TGround.port, pipepipe99R.heatPort);
  connect(TGround.port, pipepipe10.heatPort);
  connect(TGround.port, pipepipe10R.heatPort);
  connect(TGround.port, pipepipe100.heatPort);
  connect(TGround.port, pipepipe100R.heatPort);
  connect(TGround.port, pipepipe27.heatPort);
  connect(TGround.port, pipepipe27R.heatPort);
  connect(TGround.port, pipepipe101.heatPort);
  connect(TGround.port, pipepipe101R.heatPort);
  connect(TGround.port, pipepipe102.heatPort);
  connect(TGround.port, pipepipe102R.heatPort);
  connect(TGround.port, pipepipe23.heatPort);
  connect(TGround.port, pipepipe23R.heatPort);
  connect(TGround.port, pipepipe103.heatPort);
  connect(TGround.port, pipepipe103R.heatPort);
  connect(TGround.port, pipepipe104.heatPort);
  connect(TGround.port, pipepipe104R.heatPort);
  connect(TGround.port, pipepipe105.heatPort);
  connect(TGround.port, pipepipe105R.heatPort);
  connect(TGround.port, pipepipe14.heatPort);
  connect(TGround.port, pipepipe14R.heatPort);
  connect(TGround.port, pipepipe18.heatPort);
  connect(TGround.port, pipepipe18R.heatPort);
  connect(TGround.port, pipepipe106.heatPort);
  connect(TGround.port, pipepipe106R.heatPort);
  connect(TGround.port, pipepipe25.heatPort);
  connect(TGround.port, pipepipe25R.heatPort);
  connect(TGround.port, pipepipe107.heatPort);
  connect(TGround.port, pipepipe107R.heatPort);
  connect(TGround.port, pipepipe108.heatPort);
  connect(TGround.port, pipepipe108R.heatPort);
  connect(TGround.port, pipepipe109.heatPort);
  connect(TGround.port, pipepipe109R.heatPort);
  connect(TGround.port, pipepipe110.heatPort);
  connect(TGround.port, pipepipe110R.heatPort);
  connect(TGround.port, pipepipe30.heatPort);
  connect(TGround.port, pipepipe30R.heatPort);
  connect(TGround.port, pipepipe111.heatPort);
  connect(TGround.port, pipepipe111R.heatPort);
  connect(TGround.port, pipepipe4.heatPort);
  connect(TGround.port, pipepipe4R.heatPort);
  connect(TGround.port, pipepipe19.heatPort);
  connect(TGround.port, pipepipe19R.heatPort);
  connect(TGround.port, pipepipe112.heatPort);
  connect(TGround.port, pipepipe112R.heatPort);
  connect(TGround.port, pipepipe113.heatPort);
  connect(TGround.port, pipepipe113R.heatPort);
  connect(TGround.port, pipepipe114.heatPort);
  connect(TGround.port, pipepipe114R.heatPort);
  connect(TGround.port, pipepipe6.heatPort);
  connect(TGround.port, pipepipe6R.heatPort);
  connect(TGround.port, pipepipe13.heatPort);
  connect(TGround.port, pipepipe13R.heatPort);
  connect(TGround.port, pipepipe115.heatPort);
  connect(TGround.port, pipepipe115R.heatPort);
  connect(TGround.port, pipepipe116.heatPort);
  connect(TGround.port, pipepipe116R.heatPort);
  connect(TGround.port, pipepipe1.heatPort);
  connect(TGround.port, pipepipe1R.heatPort);
  connect(TGround.port, pipepipe33.heatPort);
  connect(TGround.port, pipepipe33R.heatPort);
  connect(TGround.port, pipepipe35.heatPort);
  connect(TGround.port, pipepipe35R.heatPort);
  connect(TGround.port, pipepipe117.heatPort);
  connect(TGround.port, pipepipe117R.heatPort);
  connect(TGround.port, pipepipe118.heatPort);
  connect(TGround.port, pipepipe118R.heatPort);
  connect(TGround.port, pipepipe2.heatPort);
  connect(TGround.port, pipepipe2R.heatPort);
  connect(TGround.port, pipepipe119.heatPort);
  connect(TGround.port, pipepipe119R.heatPort);
  connect(TGround.port, pipepipe8.heatPort);
  connect(TGround.port, pipepipe8R.heatPort);
  connect(TGround.port, pipepipe120.heatPort);
  connect(TGround.port, pipepipe120R.heatPort);
  connect(TGround.port, pipepipe7.heatPort);
  connect(TGround.port, pipepipe7R.heatPort);
  connect(TGround.port, pipepipe121.heatPort);
  connect(TGround.port, pipepipe121R.heatPort);
  connect(TGround.port, pipepipe122.heatPort);
  connect(TGround.port, pipepipe122R.heatPort);
  connect(TGround.port, pipepipe5.heatPort);
  connect(TGround.port, pipepipe5R.heatPort);
  connect(TGround.port, pipepipe32.heatPort);
  connect(TGround.port, pipepipe32R.heatPort);
  connect(TGround.port, pipepipe12.heatPort);
  connect(TGround.port, pipepipe12R.heatPort);
  connect(TGround.port, pipepipe123.heatPort);
  connect(TGround.port, pipepipe123R.heatPort);
  connect(TGround.port, pipepipe36.heatPort);
  connect(TGround.port, pipepipe36R.heatPort);
  connect(TGround.port, pipepipe124.heatPort);
  connect(TGround.port, pipepipe124R.heatPort);
  connect(TGround.port, pipepipe26.heatPort);
  connect(TGround.port, pipepipe26R.heatPort);
  connect(TGround.port, pipepipe3.heatPort);
  connect(TGround.port, pipepipe3R.heatPort);
  connect(TGround.port, pipepipe125.heatPort);
  connect(TGround.port, pipepipe125R.heatPort);
  connect(TGround.port, pipepipe28.heatPort);
  connect(TGround.port, pipepipe28R.heatPort);
  connect(TGround.port, pipepipe16.heatPort);
  connect(TGround.port, pipepipe16R.heatPort);
  connect(TGround.port, pipepipe126.heatPort);
  connect(TGround.port, pipepipe126R.heatPort);
  connect(TGround.port, pipepipe15.heatPort);
  connect(TGround.port, pipepipe15R.heatPort);
  connect(TGround.port, pipepipe22.heatPort);
  connect(TGround.port, pipepipe22R.heatPort);
  connect(TGround.port, pipepipe17.heatPort);
  connect(TGround.port, pipepipe17R.heatPort);
  connect(TGround.port, pipepipe21.heatPort);
  connect(TGround.port, pipepipe21R.heatPort);
  connect(TGround.port, pipepipe127.heatPort);
  connect(TGround.port, pipepipe127R.heatPort);
  connect(TGround.port, pipepipe29.heatPort);
  connect(TGround.port, pipepipe29R.heatPort);
  connect(TGround.port, pipepipe128.heatPort);
  connect(TGround.port, pipepipe128R.heatPort);
  connect(TGround.port, pipepipe24.heatPort);
  connect(TGround.port, pipepipe24R.heatPort);
  connect(TGround.port, pipepipe34.heatPort);
  connect(TGround.port, pipepipe34R.heatPort);

  annotation (
    Diagram(coordinateSystem(preserveAspectRatio=false, extent={{0.0,0.0},{400.0,306.65614335032546}})),
    uses(AixLib),
    Documentation(
      info="<html>
      <p>Network model generated with uesmodels</p>
      </html>", revisions="<html>
      <ul>
        <li><i>November 08, 2024&nbsp;</i> uesmodels v0.8.3:<br/>Auto-generated.</li>
      </ul>
      </html>"
    ),
    experiment(
      Tolerance=1e-05,
      StopTime=603900,
      Interval=900,
      __Dymola_Algorithm="Cvode",
      __Dymola_experimentSetupOutput(events=false)
    )
  );
end Heat_network_open_loop_dT_var;
