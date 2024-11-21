 
within teaser.B1180Colloredogasse29.B1180Colloredogasse29_Models;
model B1180Colloredogasse29_SingleDwelling
  "This is the simulation model of SingleDwelling within building B1180Colloredogasse29 with traceable ID None"
  
  parameter Modelica.Units.SI.HeatFlowRate Q_heat_nominal = 114201.18381079013
    "Nominal heat flow rate of building heating calculatet by TEASER";
    
  AixLib.BoundaryConditions.WeatherData.ReaderTMY3 weaDat(
    calTSky=AixLib.BoundaryConditions.Types.SkyTemperatureCalculation.HorizontalRadiation,
    computeWetBulbTemperature=false,
    filNam=Modelica.Utilities.Files.loadResource(
        "modelica://teaser/AUT_WI_Wien_110800_TMYx_2021.mos"))
    "Weather data reader"
    annotation (Placement(transformation(extent={{-98,52},{-78,72}})));
  AixLib.BoundaryConditions.SolarIrradiation.DiffusePerez HDifTil[20](    each outSkyCon=true,
    each outGroCon=true,
    til={1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966},
    azi = {-0.07681823691453117, 3.0648207623209234, -0.07681823691446321, 1.4945233307378045, -1.64768205493405, 1.4939125828466329, 3.064820762320844, 3.06477441667263, 3.064766757893193, 3.0648207623208426, -1.6477436874458047, 1.4937536529724307, 3.0648207623177015, -0.07681823691723119, -0.0767718912689498, 3.0647667578931124, 1.4939125828748414, -1.6477846917033332, 1.4945233307917294, 1.4940605066571582})
    "Calculates diffuse solar radiation on titled surface for all directions"
    annotation (Placement(transformation(extent={{-68,20},{-48,40}})));
  AixLib.BoundaryConditions.SolarIrradiation.DirectTiltedSurface HDirTil[20](    til={1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966},
    azi={-0.07681823691453117, 3.0648207623209234, -0.07681823691446321, 1.4945233307378045, -1.64768205493405, 1.4939125828466329, 3.064820762320844, 3.06477441667263, 3.064766757893193, 3.0648207623208426, -1.6477436874458047, 1.4937536529724307, 3.0648207623177015, -0.07681823691723119, -0.0767718912689498, 3.0647667578931124, 1.4939125828748414, -1.6477846917033332, 1.4945233307917294, 1.4940605066571582})
    "Calculates direct solar radiation on titled surface for all directions"
    annotation (Placement(transformation(extent={{-68,52},{-48,72}})));
  AixLib.ThermalZones.ReducedOrder.SolarGain.CorrectionGDoublePane corGDoublePane(n=20,  UWin=3.001782134105591)
    "Correction factor for solar transmission"
    annotation (Placement(transformation(extent={{6,54},{26,74}})));
  AixLib.ThermalZones.ReducedOrder.RC.FourElements
  thermalZoneFourElements(
    redeclare package Medium = Modelica.Media.Air.DryAirNasa,
    VAir=5609.022750543266,
    hConExt=2.7000000000000006,
    hConWin=2.6999999999999993,
    gWin=0.7799999999999997,
    ratioWinConRad=0.02999999999999999,
    nExt=1,
    RExt={0.001664488261302976},
    CExt={19273465.32085986},
    hRad=5.0,
    AInt=6954.276174454049,
    hConInt=2.372131147540984,
    nInt=1,
    RInt={9.816324254250807e-06},
    CInt={1072765204.3307391},
    RWin=0.013028105625601931,
    RExtRem=0.006016216714351088,
    AFloor=380.0150915002213,
    hConFloor=1.7000000000000002,
    nFloor=1,
    RFloor={0.00045823421843341504},
    RFloorRem=0.0008499122097857261,
    CFloor={48595737.28701872},
    ARoof=1498.1808927878164,
    hConRoof=1.7000000000000002,
    nRoof=1,
    RRoof={1.8840361130182154e-05},
    RRoofRem=0.00019776848252244577,
    CRoof={430949213.037911},
    energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
    extWallRC(thermCapExt(each der_T(fixed=true))),
    intWallRC(thermCapInt(each der_T(fixed=true))),
    floorRC(thermCapExt(each der_T(fixed=true))),
    roofRC(thermCapExt(each der_T(fixed=true))),
    nOrientations=20,
    AWin={0.6770115545545393, 0.5903607160549739, 0.6770115545545358, 0.40462439487660734, 0.9788100514032595, 0.6802753008883515, 0.5903607160549774, 0.6770115545307931, 0.5899465404864154, 0.5903607160549775, 0.7104952467207795, 0.5143641682698358, 0.5903607160308694, 0.6770115545307966, 0.5903607160549774, 0.5899465404864191, 0.6802753008868359, 0.5328664252886522, 0.3908499473897927, 0.7994726470267952},
    ATransparent={0.6770115545545393, 0.5903607160549739, 0.6770115545545358, 0.40462439487660734, 0.9788100514032595, 0.6802753008883515, 0.5903607160549774, 0.6770115545307931, 0.5899465404864154, 0.5903607160549775, 0.7104952467207795, 0.5143641682698358, 0.5903607160308694, 0.6770115545307966, 0.5903607160549774, 0.5899465404864191, 0.6802753008868359, 0.5328664252886522, 0.3908499473897927, 0.7994726470267952},
    AExt={3.385057772772696, 2.951803580274869, 3.385057772772678, 2.0231219743830366, 4.894050257016297, 3.4013765044417577, 2.951803580274887, 3.3850577726539655, 2.949732702432077, 2.9518035802748877, 3.551383500219225, 2.5718208413491785, 2.9518035801543467, 3.385057772653983, 2.9518035802748868, 2.9497327024320956, 3.401376504434179, 2.664332126443261, 1.9542497369489635, 3.997363235133976})
    "Thermal zone"
    annotation (Placement(transformation(extent={{44,-2},{92,34}})));
  AixLib.ThermalZones.ReducedOrder.EquivalentAirTemperature.VDI6007WithWindow eqAirTemp(
    n=20,
    wfGro=0.0,
    wfWall={0.05402453266575319, 0.04710992238540891, 0.05402453266575291, 0.03228843539126171, 0.07810761166461454, 0.054284974853538, 0.0471099223854092, 0.05402453266385828, 0.04707687178031597, 0.04710992238540922, 0.05667904266196812, 0.04104550893384807, 0.04710992238348541, 0.05402453266385858, 0.047109922385409196, 0.04707687178031627, 0.05428497485341704, 0.04252196200466887, 0.031189254611852766, 0.06379674887985363},
    wfWin={0.054023590510248194, 0.04710910081656739, 0.05402359051024791, 0.032287872300279685, 0.07810624951463044, 0.05428402815607716, 0.04710910081656767, 0.054023590508353314, 0.04707605078785721, 0.0471091008165677, 0.056695493614694295, 0.04104479312474637, 0.04710910081464393, 0.05402359050835359, 0.04710910081656767, 0.04707605078785751, 0.05428402815595622, 0.04252122044710956, 0.031188710689925455, 0.06379563630274852},
    withLongwave=true,
    aExt=0.5,
    hConWallOut=20.0,
    hRad=5.0,
    hConWinOut=20.0,
    TGro=286.15) "Computes equivalent air temperature"
    annotation (Placement(transformation(extent={{-24,-14},{-4,6}})));
  Modelica.Blocks.Math.Add solRad[20]
    "Sums up solar radiation of both directions"
    annotation (Placement(transformation(extent={{-38,6},{-28,16}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature
    "Prescribed temperature for exterior walls outdoor surface temperature"
    annotation (Placement(transformation(extent={{8,-6},{20,6}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperature1
    "Prescribed temperature for windows outdoor surface temperature"
    annotation (Placement(transformation(extent={{8,14},{20,26}})));
  Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorWin
    "Outdoor convective heat transfer of windows"
    annotation (Placement(transformation(extent={{38,16},{28,26}})));
  Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorWall
    "Outdoor convective heat transfer of walls"
    annotation (Placement(transformation(extent={{36,6},{26,-4}})));
  Modelica.Blocks.Sources.Constant const[20](each k=0)
    "Sets sunblind signal to zero (open)"
    annotation (Placement(transformation(extent={{-20,14},{-14,20}})));
  AixLib.BoundaryConditions.WeatherData.Bus weaBus "Weather data bus"
    annotation (Placement(
    transformation(extent={{-100,-10},{-66,22}}),iconTransformation(
    extent={{-70,-12},{-50,8}})));
  Modelica.Blocks.Sources.Constant hConWall(k=25.000000000000004*62.65778907734125)
    "Outdoor coefficient of heat transfer for walls"
    annotation (Placement(
    transformation(
    extent={{-4,-4},{4,4}},
    rotation=90,
    origin={30,-16})));
  Modelica.Blocks.Sources.Constant hConvWin(k=24.99999999999999*12.531776362145187)
    "Outdoor coefficient of heat transfer for windows"
    annotation (Placement(
    transformation(
    extent={{4,-4},{-4,4}},
    rotation=90,
    origin={32,38})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow personsRad
    "Radiative heat flow of persons"
    annotation (Placement(transformation(extent={{48,-42},{68,-22}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow personsConv
    "Convective heat flow of persons"
    annotation (Placement(transformation(extent={{48,-62},{68,-42}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow machinesConv
    "Convective heat flow of machines"
    annotation (Placement(transformation(extent={{48,-84},{68,-64}})));
  Modelica.Blocks.Sources.CombiTimeTable internalGains(
    tableOnFile=true,
    extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic,
    tableName="Internals",
    fileName=Modelica.Utilities.Files.loadResource(
      "modelica://teaser/B1180Colloredogasse29/B1180Colloredogasse29_Models/InternalGains_B1180Colloredogasse29SingleDwelling.txt"),
    columns={2,3,4})
    "Table with profiles for persons (radiative and convective) and machines (convective)"
    annotation (Placement(transformation(extent={{6,-60},{22,-44}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperatureFloor
    "Prescribed temperature for floor plate outdoor surface temperature"
    annotation (Placement(transformation(
    extent={{-6,-6},{6,6}},
    rotation=90,
    origin={67,-12})));
  Modelica.Blocks.Sources.Constant TSoil(k=286.15)
    "Outdoor surface temperature for floor plate"
    annotation (
    Placement(transformation(
    extent={{-4,-4},{4,4}},
    rotation=180,
    origin={84,-22})));

  AixLib.ThermalZones.ReducedOrder.EquivalentAirTemperature.VDI6007 eqAirTempVDI(
    aExt=0.5,
    wfGro=0,
    hConWallOut=20.00000000000001,
    hRad=5.0,
    n=25,
    wfWall={0.04763642206357831, 0.005840451858449127, 0.0016233823310574508, 0.0029489728520303692, 0.0033006885635180005, 0.005634871266149406, 0.0029406913951134377, 0.0013950715384199177, 0.005979226976131671, 0.002958741855496929, 0.0010590199075650618, 0.0012335595383793367, 0.0025785227015308575, 0.21206538478074802, 0.0062818385569328415, 0.09385986121500903, 0.0038410035912356828, 0.0029184018788548753, 0.0033817864207879504, 0.2208111794605569, 0.22081908370185613, 0.0032553475194066804, 0.1414920245422092, 0.002371193125413211, 0.0037732723595696955},
    wfWin={0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    TGro=285.15) "Computes equivalent air temperature for roof"
    annotation (Placement(transformation(extent={{30,34},{50,54}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature prescribedTemperatureRoof
    "Prescribed temperature for roof outdoor surface temperature"
    annotation (Placement(transformation(extent={{-6,-6},{6,6}},rotation=-90,
    origin={67,44})));
  Modelica.Thermal.HeatTransfer.Components.Convection thermalConductorRoof
    "Outdoor convective heat transfer of roof"
    annotation (Placement(transformation(extent={{5,-5},{-5,5}},rotation=-90,
    origin={67,27})));
  Modelica.Blocks.Sources.Constant hConvRoof(k=37454.52231969545)
    "Outdoor coefficient of heat transfer for roof"
    annotation (Placement(transformation(extent={{4,-4},{-4,4}},rotation=0,
    origin={86,27})));
  Modelica.Blocks.Sources.Constant const1[25](each k=0)
    "Sets sunblind signal to zero (open)" annotation (Placement(transformation(
        extent={{3,-3},{-3,3}},
        rotation=90,
        origin={40,71})));
  Modelica.Blocks.Math.Add solRadRoof[25]
    "Sums up solar radiation of both directions"
    annotation (Placement(transformation(extent={{4,76},{14,86}})));
  AixLib.BoundaryConditions.SolarIrradiation.DirectTiltedSurface HDirTilRoof[25](    til={1.5707919639197876, 2.8710572166402915, 2.8710323519382546, 1.5708156317356277, 2.733495779415381, 2.8710611608122014, 1.5707894070680908, 0.27044123249208873, 2.870936752006769, 1.5707961467331062, 2.8710740273043402, 0.27056033343888664, 1.5707963267948963, 0.0, 0.2706360389685228, 1.570802800107271, 2.7338184561459156, 1.5707851564752757, 1.570796326794897, 1.5707964370630703, 1.570795241731511, 2.7336621908668604, 1.570799115715028, 1.570796326794897, 0.4078888610428317},
    azi={-0.0763657516813513, -1.6478466030852312, 1.4937536529724307, -0.07700356271744892, -0.0768181717985227, -1.6475183662053519, 3.0647566344173263, 1.4938079618864604, 1.4940643211552078, -0.0768926812434224, -1.6475987529761935, -1.647069322798064, 1.4940965439758849, 0.0, -1.6476490131056987, 3.064846780088406, -0.07631907561199108, 3.0645423275135295, 1.493910598655743, 1.4940194100233886, 1.4939780092725092, 3.0650216855384764, 3.0649743382158374, -1.6477436874458047, -0.07707639631117016})
    "Calculates direct solar radiation on titled surface for both directions"
    annotation (Placement(transformation(extent={{-68,74},{-48,94}})));
  AixLib.BoundaryConditions.SolarIrradiation.DiffusePerez HDifTilRoof[25](    til={1.5707919639197876, 2.8710572166402915, 2.8710323519382546, 1.5708156317356277, 2.733495779415381, 2.8710611608122014, 1.5707894070680908, 0.27044123249208873, 2.870936752006769, 1.5707961467331062, 2.8710740273043402, 0.27056033343888664, 1.5707963267948963, 0.0, 0.2706360389685228, 1.570802800107271, 2.7338184561459156, 1.5707851564752757, 1.570796326794897, 1.5707964370630703, 1.570795241731511, 2.7336621908668604, 1.570799115715028, 1.570796326794897, 0.4078888610428317},
    azi={-0.0763657516813513, -1.6478466030852312, 1.4937536529724307, -0.07700356271744892, -0.0768181717985227, -1.6475183662053519, 3.0647566344173263, 1.4938079618864604, 1.4940643211552078, -0.0768926812434224, -1.6475987529761935, -1.647069322798064, 1.4940965439758849, 0.0, -1.6476490131056987, 3.064846780088406, -0.07631907561199108, 3.0645423275135295, 1.493910598655743, 1.4940194100233886, 1.4939780092725092, 3.0650216855384764, 3.0649743382158374, -1.6477436874458047, -0.07707639631117016})
    "Calculates diffuse solar radiation on titled surface for both directions"
    annotation (Placement(transformation(extent={{-68,48},{-48,68}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow heaterConvective;
  
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow heaterRadiant;
  
  Modelica.Blocks.Sources.Constant TAirSet(k=273.15 + 22);
  
  AixLib.Controls.Continuous.LimPID heatingPID(yMax=Q_heat_nominal, xi_start=Q_heat_nominal);
  
  Modelica.Blocks.Math.Gain gain(k=0.5);
  
  Modelica.Blocks.Interfaces.RealOutput QFlowHeat;
  

equation
  connect(eqAirTemp.TEqAirWin, prescribedTemperature1.T)
    annotation (Line(
    points={{-3,-0.2},{0,-0.2},{0,20},{6.8,20}},   color={0,0,127}));
  connect(eqAirTemp.TEqAir, prescribedTemperature.T)
    annotation (Line(points={{-3,-4},{4,-4},{4,0},{6.8,0}},
    color={0,0,127}));
  connect(weaDat.weaBus, weaBus)
    annotation (Line(
    points={{-78,62},{-74,62},{-74,18},{-84,18},{-84,12},{-83,12},{-83,6}},
    color={255,204,51},
    thickness=0.5), Text(
    string="%second",
    index=1,
    extent={{6,3},{6,3}}));
  connect(weaBus.TDryBul, eqAirTemp.TDryBul)
    annotation (Line(
    points={{-83,6},{-83,-2},{-38,-2},{-38,-10},{-26,-10}},
    color={255,204,51},
    thickness=0.5), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
  connect(internalGains.y[1], personsRad.Q_flow)
    annotation (Line(points={{22.8,
    -52},{28,-52},{28,-32},{48,-32}}, color={0,0,127}));
  connect(internalGains.y[2], personsConv.Q_flow)
    annotation (Line(points={{22.8,-52},{36,-52},{48,-52}}, color={0,0,127}));
  connect(internalGains.y[3], machinesConv.Q_flow)
    annotation (Line(points={{22.8,
    -52},{28,-52},{28,-74},{48,-74}}, color={0,0,127}));
  connect(const.y, eqAirTemp.sunblind)
    annotation (Line(points={{-13.7,17},{-12,17},{-12,8},{-14,8},{-14,8}},
    color={0,0,127}));
  connect(HDifTil.HSkyDifTil, corGDoublePane.HSkyDifTil)
    annotation (Line(
    points={{-47,36},{-28,36},{-6,36},{-6,66},{4,66}}, color={0,0,127}));
  connect(HDirTil.H, corGDoublePane.HDirTil)
    annotation (Line(points={{-47,62},{-10,62},{-10,70},{4,70}},
    color={0,0,127}));
  connect(HDirTil.H,solRad. u1)
    annotation (Line(points={{-47,62},{-42,62},{-42,
    14},{-39,14}}, color={0,0,127}));
  connect(HDirTil.inc, corGDoublePane.inc)
    annotation (Line(points={{-47,58},{4,58},{4,58}}, color={0,0,127}));
  connect(HDifTil.H,solRad. u2)
    annotation (Line(points={{-47,30},{-44,30},{-44,
    8},{-39,8}}, color={0,0,127}));
  connect(HDifTil.HGroDifTil, corGDoublePane.HGroDifTil)
    annotation (Line(
    points={{-47,24},{-4,24},{-4,62},{4,62}}, color={0,0,127}));
  connect(solRad.y, eqAirTemp.HSol)
    annotation (Line(points={{-27.5,11},{-26,11},{-26,2},{-26,2}},
    color={0,0,127}));
    connect(weaDat.weaBus, HDifTil[1].weaBus)
    annotation (Line(
    points={{-78,62},{-74,62},{-74,30},{-68,30}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDirTil[1].weaBus)
    annotation (Line(
    points={{-78,62},{-73,62},{-68,62}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDifTil[2].weaBus)
    annotation (Line(
    points={{-78,62},{-74,62},{-74,30},{-68,30}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDirTil[2].weaBus)
    annotation (Line(
    points={{-78,62},{-73,62},{-68,62}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDifTil[3].weaBus)
    annotation (Line(
    points={{-78,62},{-74,62},{-74,30},{-68,30}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDirTil[3].weaBus)
    annotation (Line(
    points={{-78,62},{-73,62},{-68,62}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDifTil[4].weaBus)
    annotation (Line(
    points={{-78,62},{-74,62},{-74,30},{-68,30}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDirTil[4].weaBus)
    annotation (Line(
    points={{-78,62},{-73,62},{-68,62}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDifTil[5].weaBus)
    annotation (Line(
    points={{-78,62},{-74,62},{-74,30},{-68,30}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDirTil[5].weaBus)
    annotation (Line(
    points={{-78,62},{-73,62},{-68,62}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDifTil[6].weaBus)
    annotation (Line(
    points={{-78,62},{-74,62},{-74,30},{-68,30}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDirTil[6].weaBus)
    annotation (Line(
    points={{-78,62},{-73,62},{-68,62}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDifTil[7].weaBus)
    annotation (Line(
    points={{-78,62},{-74,62},{-74,30},{-68,30}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDirTil[7].weaBus)
    annotation (Line(
    points={{-78,62},{-73,62},{-68,62}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDifTil[8].weaBus)
    annotation (Line(
    points={{-78,62},{-74,62},{-74,30},{-68,30}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDirTil[8].weaBus)
    annotation (Line(
    points={{-78,62},{-73,62},{-68,62}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDifTil[9].weaBus)
    annotation (Line(
    points={{-78,62},{-74,62},{-74,30},{-68,30}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDirTil[9].weaBus)
    annotation (Line(
    points={{-78,62},{-73,62},{-68,62}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDifTil[10].weaBus)
    annotation (Line(
    points={{-78,62},{-74,62},{-74,30},{-68,30}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDirTil[10].weaBus)
    annotation (Line(
    points={{-78,62},{-73,62},{-68,62}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDifTil[11].weaBus)
    annotation (Line(
    points={{-78,62},{-74,62},{-74,30},{-68,30}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDirTil[11].weaBus)
    annotation (Line(
    points={{-78,62},{-73,62},{-68,62}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDifTil[12].weaBus)
    annotation (Line(
    points={{-78,62},{-74,62},{-74,30},{-68,30}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDirTil[12].weaBus)
    annotation (Line(
    points={{-78,62},{-73,62},{-68,62}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDifTil[13].weaBus)
    annotation (Line(
    points={{-78,62},{-74,62},{-74,30},{-68,30}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDirTil[13].weaBus)
    annotation (Line(
    points={{-78,62},{-73,62},{-68,62}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDifTil[14].weaBus)
    annotation (Line(
    points={{-78,62},{-74,62},{-74,30},{-68,30}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDirTil[14].weaBus)
    annotation (Line(
    points={{-78,62},{-73,62},{-68,62}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDifTil[15].weaBus)
    annotation (Line(
    points={{-78,62},{-74,62},{-74,30},{-68,30}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDirTil[15].weaBus)
    annotation (Line(
    points={{-78,62},{-73,62},{-68,62}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDifTil[16].weaBus)
    annotation (Line(
    points={{-78,62},{-74,62},{-74,30},{-68,30}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDirTil[16].weaBus)
    annotation (Line(
    points={{-78,62},{-73,62},{-68,62}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDifTil[17].weaBus)
    annotation (Line(
    points={{-78,62},{-74,62},{-74,30},{-68,30}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDirTil[17].weaBus)
    annotation (Line(
    points={{-78,62},{-73,62},{-68,62}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDifTil[18].weaBus)
    annotation (Line(
    points={{-78,62},{-74,62},{-74,30},{-68,30}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDirTil[18].weaBus)
    annotation (Line(
    points={{-78,62},{-73,62},{-68,62}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDifTil[19].weaBus)
    annotation (Line(
    points={{-78,62},{-74,62},{-74,30},{-68,30}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDirTil[19].weaBus)
    annotation (Line(
    points={{-78,62},{-73,62},{-68,62}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDifTil[20].weaBus)
    annotation (Line(
    points={{-78,62},{-74,62},{-74,30},{-68,30}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDirTil[20].weaBus)
    annotation (Line(
    points={{-78,62},{-73,62},{-68,62}},
    color={255,204,51},
    thickness=0.5));
  connect(personsRad.port, thermalZoneFourElements.intGainsRad)
    annotation (Line(
    points={{68,-32},{84,-32},{100,-32},{100,24},{92.2,24}},
    color={191,0,0}));
  connect(thermalConductorWin.solid, thermalZoneFourElements.window)
    annotation (
     Line(points={{38,21},{40,21},{40,20},{43.8,20}}, color={191,0,0}));
  connect(prescribedTemperature1.port, thermalConductorWin.fluid)
    annotation (Line(points={{20,20},{28,20},{28,21}}, color={191,0,0}));
  connect(thermalZoneFourElements.extWall, thermalConductorWall.solid)
    annotation (Line(points={{43.8,12},{40,12},{40,1},{36,1}},
    color={191,0,0}));
  connect(thermalConductorWall.fluid, prescribedTemperature.port)
    annotation (Line(points={{26,1},{24,1},{24,0},{20,0}}, color={191,0,0}));
  connect(hConWall.y, thermalConductorWall.Gc)
    annotation (Line(points={{30,-11.6},{30,-4},{31,-4}}, color={0,0,127}));
  connect(hConvWin.y, thermalConductorWin.Gc)
    annotation (Line(points={{32,33.6},{32,26},{33,26}}, color={0,0,127}));
  connect(weaBus.TBlaSky, eqAirTemp.TBlaSky)
    annotation (Line(
    points={{-83,6},{-58,6},{-58,2},{-32,2},{-32,-4},{-26,-4}},
    color={255,204,51},
    thickness=0.5), Text(
    string="%first",
    index=-1,
    extent={{-6,3},{-6,3}}));
  connect(machinesConv.port, thermalZoneFourElements.intGainsConv)
    annotation (
    Line(points={{68,-74},{82,-74},{96,-74},{96,20},{92,20}}, color={191,
    0,0}));
  connect(personsConv.port, thermalZoneFourElements.intGainsConv)
    annotation (
    Line(points={{68,-52},{96,-52},{96,20},{92,20}}, color={191,0,0}));
  connect(corGDoublePane.solarRadWinTrans, thermalZoneFourElements.solRad)
    annotation (Line(points={{27,64},{34,64},{40,64},{40,31},{43,31}}, color={0,
    0,127}));
  connect(prescribedTemperatureFloor.port, thermalZoneFourElements.floor)
    annotation (Line(points={{67,-6},{68,-6},{68,-2}}, color={191,0,0}));
  connect(prescribedTemperatureFloor.T, TSoil.y) annotation (Line(points={{67,-19.2},
          {72.5,-19.2},{72.5,-22},{79.6,-22}}, color={0,0,127}));
  connect(prescribedTemperatureRoof.port, thermalConductorRoof.fluid)
    annotation (Line(points={{67,38},{67,38},{67,32}}, color={191,0,0}));
  connect(thermalConductorRoof.solid, thermalZoneFourElements.roof)
    annotation (Line(points={{67,22},{66.8,22},{66.8,13}}, color={191,0,0}));
  connect(thermalConductorRoof.Gc, hConvRoof.y)
    annotation (Line(points={{72,27},{78,27},{81.6,27}},color={0,0,127}));
  connect(eqAirTempVDI.TDryBul, eqAirTemp.TDryBul)
    annotation (Line(points={{28,38},{-96,38},{-96,-36},{-38,-36},{-38,-44},{
          -26,-44}},
    color={0,0,127}));
  connect(eqAirTempVDI.TBlaSky, eqAirTemp.TBlaSky)
    annotation (Line(points={{28,44},{-34,44},{-98,44},{-98,-42},{-58,-42},{-58,
          -32},{-32,-32},{-32,-38},{-26,-38}},
    color={0,0,127}));
  connect(const1.y, eqAirTempVDI.sunblind)
    annotation (Line(points={{40,67.7},{40,56}}, color={0,0,127}));
  connect(eqAirTempVDI.TEqAir, prescribedTemperatureRoof.T) annotation (Line(
        points={{51,44},{56,44},{56,58},{67,58},{67,51.2}}, color={0,0,127}));
  connect(weaDat.weaBus, HDifTilRoof[1].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[1].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTilRoof[2].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[2].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTilRoof[3].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[3].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTilRoof[4].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[4].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTilRoof[5].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[5].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTilRoof[6].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[6].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTilRoof[7].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[7].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTilRoof[8].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[8].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTilRoof[9].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[9].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTilRoof[10].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[10].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTilRoof[11].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[11].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTilRoof[12].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[12].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTilRoof[13].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[13].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTilRoof[14].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[14].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTilRoof[15].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[15].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTilRoof[16].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[16].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTilRoof[17].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[17].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTilRoof[18].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[18].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTilRoof[19].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[19].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTilRoof[20].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[20].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTilRoof[21].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[21].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTilRoof[22].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[22].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTilRoof[23].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[23].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTilRoof[24].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[24].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTilRoof[25].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[25].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(HDirTilRoof.H, solRadRoof.u1)
    annotation (Line(points={{-47,84},{-22,84},{3,84}}, color={0,0,127}));
  connect(HDifTilRoof.H, solRadRoof.u2) annotation (Line(points={{-47,58},{-22,
          58},{-22,78},{3,78}}, color={0,0,127}));
  connect(eqAirTempVDI.HSol, solRadRoof.y) annotation (Line(points={{28,50},
          {6,50},{6,46},{-83,46},{-83,6}}, color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}}));
  connect(TAirSet.y, heatingPID.u_s);
  
  connect(thermalZoneFourElements.TAir, heatingPID.u_m);
  
  connect(heaterConvective.port, thermalZoneFourElements.intGainsConv);
  
  connect(heaterRadiant.port, thermalZoneFourElements.intGainsRad);
  
  connect(gain.y, heaterConvective.Q_flow);
  
  connect(gain.y, heaterRadiant.Q_flow);
  
  connect(heatingPID.y, gain.u);
  
  connect(QFlowHeat, heatingPID.y);
  
  annotation (experiment(
  StartTime=0,
  StopTime=31536000,
  Interval=3600,
  __Dymola_Algorithm="Cvode"),
  __Dymola_experimentSetupOutput(equidistant=true,
  events=false));
end B1180Colloredogasse29_SingleDwelling;
