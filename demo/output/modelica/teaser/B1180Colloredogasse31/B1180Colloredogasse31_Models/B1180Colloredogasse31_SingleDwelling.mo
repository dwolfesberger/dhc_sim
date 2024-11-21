 
within teaser.B1180Colloredogasse31.B1180Colloredogasse31_Models;
model B1180Colloredogasse31_SingleDwelling
  "This is the simulation model of SingleDwelling within building B1180Colloredogasse31 with traceable ID None"
  
  parameter Modelica.Units.SI.HeatFlowRate Q_heat_nominal = 132593.5321385026
    "Nominal heat flow rate of building heating calculatet by TEASER";
    
  AixLib.BoundaryConditions.WeatherData.ReaderTMY3 weaDat(
    calTSky=AixLib.BoundaryConditions.Types.SkyTemperatureCalculation.HorizontalRadiation,
    computeWetBulbTemperature=false,
    filNam=Modelica.Utilities.Files.loadResource(
        "modelica://teaser/AUT_WI_Wien_110800_TMYx_2021.mos"))
    "Weather data reader"
    annotation (Placement(transformation(extent={{-98,52},{-78,72}})));
  AixLib.BoundaryConditions.SolarIrradiation.DiffusePerez HDifTil[22](    each outSkyCon=true,
    each outGroCon=true,
    til={1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966},
    azi = {1.5687476740982051, 3.1395518400965536, -0.002207501933002722, 3.137161367971372, 1.5681647539197956, -1.5733670152219335, -0.002958571249353081, 3.141592653589793, 3.050754226844231, -1.5707963267948966, -2.310612051151189, -1.5737813925582504, 1.5707963267948966, -1.5726602575364654, 0.6066051086033171, 3.139513654506106, 2.4044329013383083, -2.307282484038039, -2.5321341156352446, 3.1391416781055246, 3.0449950087193587, 2.5127963671769726})
    "Calculates diffuse solar radiation on titled surface for all directions"
    annotation (Placement(transformation(extent={{-68,20},{-48,40}})));
  AixLib.BoundaryConditions.SolarIrradiation.DirectTiltedSurface HDirTil[22](    til={1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966, 1.5707963267948966},
    azi={1.5687476740982051, 3.1395518400965536, -0.002207501933002722, 3.137161367971372, 1.5681647539197956, -1.5733670152219335, -0.002958571249353081, 3.141592653589793, 3.050754226844231, -1.5707963267948966, -2.310612051151189, -1.5737813925582504, 1.5707963267948966, -1.5726602575364654, 0.6066051086033171, 3.139513654506106, 2.4044329013383083, -2.307282484038039, -2.5321341156352446, 3.1391416781055246, 3.0449950087193587, 2.5127963671769726})
    "Calculates direct solar radiation on titled surface for all directions"
    annotation (Placement(transformation(extent={{-68,52},{-48,72}})));
  AixLib.ThermalZones.ReducedOrder.SolarGain.CorrectionGDoublePane corGDoublePane(n=22,  UWin=3.0017821341055915)
    "Correction factor for solar transmission"
    annotation (Placement(transformation(extent={{6,54},{26,74}})));
  AixLib.ThermalZones.ReducedOrder.RC.FourElements
  thermalZoneFourElements(
    redeclare package Medium = Modelica.Media.Air.DryAirNasa,
    VAir=2544.6538842019763,
    hConExt=2.6999999999999984,
    hConWin=2.7000000000000006,
    gWin=0.7800000000000004,
    ratioWinConRad=0.030000000000000016,
    nExt=1,
    RExt={0.0001732134218102325},
    CExt={185207684.51966533},
    hRad=4.999999999999999,
    AInt=2771.3515235021523,
    hConInt=2.465166340508807,
    nInt=1,
    RInt={2.5107644808067738e-05},
    CInt={409903958.4115843},
    RWin=0.0013557813309743743,
    RExtRem=0.0006260719932196519,
    AFloor=296.90549999935035,
    hConFloor=1.7000000000000008,
    nFloor=1,
    RFloor={0.0005865028382663428},
    RFloorRem=0.0010878190743168607,
    CFloor={37967812.331029125},
    ARoof=1325.4335618704747,
    hConRoof=1.7,
    nRoof=1,
    RRoof={2.1295876210217404e-05},
    RRoofRem=0.00022354418224677805,
    CRoof={381258733.95650923},
    energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
    extWallRC(thermCapExt(each der_T(fixed=true))),
    intWallRC(thermCapInt(each der_T(fixed=true))),
    floorRC(thermCapExt(each der_T(fixed=true))),
    roofRC(thermCapExt(each der_T(fixed=true))),
    nOrientations=22,
    AWin={2.0665303365895467, 12.334305685746148, 10.745186180911768, 10.516621253584095, 9.013631210472237, 3.8822328277423144, 5.2505149792468915, 1.5668600000069721, 5.060765402217623, 1.546900000000012, 3.151100304194335, 3.343314895489258, 1.0067368000001997, 23.308819490179317, 1.4941757063864225, 4.800390374206843, 1.6033912880574321, 3.1626546542908036, 3.0122344655856317, 9.677789068484392, 2.586899935382846, 1.2905075218731974},
    ATransparent={2.0665303365895467, 12.334305685746148, 10.745186180911768, 10.516621253584095, 9.013631210472237, 3.8822328277423144, 5.2505149792468915, 1.5668600000069721, 5.060765402217623, 1.546900000000012, 3.151100304194335, 3.343314895489258, 1.0067368000001997, 23.308819490179317, 1.4941757063864225, 4.800390374206843, 1.6033912880574321, 3.1626546542908036, 3.0122344655856317, 9.677789068484392, 2.586899935382846, 1.2905075218731974},
    AExt={10.332651682947732, 61.671528428730745, 53.72593090455884, 52.58310626792046, 45.06815605236118, 19.411164138711573, 26.252574896234457, 7.834300000034858, 25.30382701108811, 7.73450000000006, 15.755501520971675, 16.71657447744629, 5.033684000000998, 116.54409745089659, 7.470878531932112, 24.001951871034212, 8.01695644028716, 15.813273271454015, 15.061172327928157, 48.388945342421955, 12.934499676914227, 6.4525376093659865})
    "Thermal zone"
    annotation (Placement(transformation(extent={{44,-2},{92,34}})));
  AixLib.ThermalZones.ReducedOrder.EquivalentAirTemperature.VDI6007WithWindow eqAirTemp(
    n=22,
    wfGro=0.0,
    wfWall={0.017160799907721815, 0.10242605594800241, 0.08922975228428455, 0.08733171240829299, 0.074850641631608, 0.032238685090886905, 0.043601119894543454, 0.01301145715959225, 0.04202540892320198, 0.012845706112916185, 0.02616724315728289, 0.027763424003096365, 0.008360104121701562, 0.19356018166000005, 0.012407875108474223, 0.03986321286077469, 0.013314818844395728, 0.026263192336715938, 0.025014078924371238, 0.08036591518297397, 0.02148203265463161, 0.010716581784530818},
    wfWin={0.017160799907721826, 0.10242605594800247, 0.08922975228428459, 0.08733171240829303, 0.07485064163160805, 0.03223868509088692, 0.04360111989454348, 0.013011457159592262, 0.042025408923202, 0.01284570611291619, 0.0261672431572829, 0.02776342400309638, 0.008360104121701564, 0.1935601816600001, 0.012407875108474232, 0.03986321286077471, 0.013314818844395735, 0.02626319233671595, 0.025014078924371252, 0.08036591518297402, 0.021482032654631635, 0.010716581784530822},
    withLongwave=true,
    aExt=0.5,
    hConWallOut=19.999999999999993,
    hRad=5.0,
    hConWinOut=20.000000000000014,
    TGro=286.15) "Computes equivalent air temperature"
    annotation (Placement(transformation(extent={{-24,-14},{-4,6}})));
  Modelica.Blocks.Math.Add solRad[22]
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
  Modelica.Blocks.Sources.Constant const[22](each k=0)
    "Sets sunblind signal to zero (open)"
    annotation (Placement(transformation(extent={{-20,14},{-14,20}})));
  AixLib.BoundaryConditions.WeatherData.Bus weaBus "Weather data bus"
    annotation (Placement(
    transformation(extent={{-100,-10},{-66,22}}),iconTransformation(
    extent={{-70,-12},{-50,8}})));
  Modelica.Blocks.Sources.Constant hConWall(k=24.999999999999986*602.1078119032417)
    "Outdoor coefficient of heat transfer for walls"
    annotation (Placement(
    transformation(
    extent={{-4,-4},{4,4}},
    rotation=90,
    origin={30,-16})));
  Modelica.Blocks.Sources.Constant hConvWin(k=25.000000000000014*120.42156238064827)
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
      "modelica://teaser/B1180Colloredogasse31/B1180Colloredogasse31_Models/InternalGains_B1180Colloredogasse31SingleDwelling.txt"),
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
    hConWallOut=20.0,
    hRad=4.999999999999998,
    n=31,
    wfWall={0.006456325902184398, 0.04310523197579082, 0.001907221009733552, 0.13338721412738463, 0.04463979630881398, 0.006961469155785361, 0.043507402533544084, 0.032436225530175423, 0.0083136871715013, 0.03167731408446353, 0.01702852683503786, 0.0024291109188193096, 0.01622670619643795, 0.007798717306907017, 0.07485847043837424, 0.0018195805582650027, 0.129574981277197, 0.01703083364104434, 0.004511112992144617, 0.04480126481486589, 0.0042864757391614765, 0.05196112779555554, 0.019013112125846825, 0.018720252501508734, 0.006088318350770746, 0.010982089053883244, 0.13710401440732373, 0.03363261462170581, 0.032197066879667176, 0.008576247070280785, 0.008967488675825372},
    wfWin={0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
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
  Modelica.Blocks.Sources.Constant hConvRoof(k=33135.83904676187)
    "Outdoor coefficient of heat transfer for roof"
    annotation (Placement(transformation(extent={{4,-4},{-4,4}},rotation=0,
    origin={86,27})));
  Modelica.Blocks.Sources.Constant const1[31](each k=0)
    "Sets sunblind signal to zero (open)" annotation (Placement(transformation(
        extent={{3,-3},{-3,3}},
        rotation=90,
        origin={40,71})));
  Modelica.Blocks.Math.Add solRadRoof[31]
    "Sums up solar radiation of both directions"
    annotation (Placement(transformation(extent={{4,76},{14,86}})));
  AixLib.BoundaryConditions.SolarIrradiation.DirectTiltedSurface HDirTilRoof[31](    til={1.570796326794897, 0.9345216696093025, 2.000082052236455, 1.5708115370119293, 1.5708011947394378, 1.141402813313915, 2.1025217355933306, 1.5708038911736493, 1.5707963267948963, 0.9345533147089333, 2.1995584982282472, 1.5707963267948963, 1.570796326794897, 1.570796326794897, 1.5707886163179599, 1.0775060235902836, 1.5708001220376835, 0.9412028421337685, 1.570791214246607, 0.0, 0.828797375080438, 2.0048065469240144, 1.136764075538412, 1.5707902588559917, 1.570796326794897, 1.570796326794897, 0.9345619391718728, 2.043808212608473, 2.102565749581137, 1.0857507734686742, 1.0389281424456769},
    azi={0.8505233267398974, 3.139583273927057, 3.139646184028541, 3.140257640906366, -0.002220369767139049, 3.1396346362060044, -1.5640940104262007, -1.5734302628925219, -1.5707963267948966, 3.1395777574769803, 1.569732303947972, -2.3127435947377717, -1.563835882352088, -1.5728434068501589, -0.0044324349381757965, -0.002236132229980225, 1.569130923179662, 1.570588141834102, -1.5727968393169376, 0.0, -1.5759297048918184, -1.572815859574996, -1.572716162382481, 0.8310042721484975, 2.3972672687889536, 2.5076963721635575, -0.0020145590981830073, 0.00700535954582608, 1.5779696376409582, -0.002469533614788126, -1.5646694712259561})
    "Calculates direct solar radiation on titled surface for both directions"
    annotation (Placement(transformation(extent={{-68,74},{-48,94}})));
  AixLib.BoundaryConditions.SolarIrradiation.DiffusePerez HDifTilRoof[31](    til={1.570796326794897, 0.9345216696093025, 2.000082052236455, 1.5708115370119293, 1.5708011947394378, 1.141402813313915, 2.1025217355933306, 1.5708038911736493, 1.5707963267948963, 0.9345533147089333, 2.1995584982282472, 1.5707963267948963, 1.570796326794897, 1.570796326794897, 1.5707886163179599, 1.0775060235902836, 1.5708001220376835, 0.9412028421337685, 1.570791214246607, 0.0, 0.828797375080438, 2.0048065469240144, 1.136764075538412, 1.5707902588559917, 1.570796326794897, 1.570796326794897, 0.9345619391718728, 2.043808212608473, 2.102565749581137, 1.0857507734686742, 1.0389281424456769},
    azi={0.8505233267398974, 3.139583273927057, 3.139646184028541, 3.140257640906366, -0.002220369767139049, 3.1396346362060044, -1.5640940104262007, -1.5734302628925219, -1.5707963267948966, 3.1395777574769803, 1.569732303947972, -2.3127435947377717, -1.563835882352088, -1.5728434068501589, -0.0044324349381757965, -0.002236132229980225, 1.569130923179662, 1.570588141834102, -1.5727968393169376, 0.0, -1.5759297048918184, -1.572815859574996, -1.572716162382481, 0.8310042721484975, 2.3972672687889536, 2.5076963721635575, -0.0020145590981830073, 0.00700535954582608, 1.5779696376409582, -0.002469533614788126, -1.5646694712259561})
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
    connect(weaDat.weaBus, HDifTil[21].weaBus)
    annotation (Line(
    points={{-78,62},{-74,62},{-74,30},{-68,30}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDirTil[21].weaBus)
    annotation (Line(
    points={{-78,62},{-73,62},{-68,62}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDifTil[22].weaBus)
    annotation (Line(
    points={{-78,62},{-74,62},{-74,30},{-68,30}},
    color={255,204,51},
    thickness=0.5));
    connect(weaDat.weaBus, HDirTil[22].weaBus)
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
  connect(weaDat.weaBus, HDifTilRoof[26].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[26].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTilRoof[27].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[27].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTilRoof[28].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[28].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTilRoof[29].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[29].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTilRoof[30].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[30].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,84},{-68,84}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDifTilRoof[31].weaBus) annotation (Line(
      points={{-76,22},{-74,22},{-74,58},{-68,58}},
      color={255,204,51},
      thickness=0.5));
  connect(weaDat.weaBus, HDirTilRoof[31].weaBus) annotation (Line(
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
end B1180Colloredogasse31_SingleDwelling;
