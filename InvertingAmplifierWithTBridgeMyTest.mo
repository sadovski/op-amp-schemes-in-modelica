model InvertingAmplifierWithTBridgeMyTest
  Modelica.Electrical.Analog.Ideal.IdealizedOpAmpLimted OpAmp(Vns = -20, Vps = +20, useSupply = false)  annotation(
    Placement(visible = true, transformation(origin = {5, 5}, extent = {{-21, -19}, {21, 19}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(visible = true, transformation(origin = {-20, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R1(R = 499000)  annotation(
    Placement(visible = true, transformation(origin = {-52, 16}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R2(R = 22600)  annotation(
    Placement(visible = true, transformation(origin = {-6, 60}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R3(R = 22600)  annotation(
    Placement(visible = true, transformation(origin = {44, 60}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R4(R = 100)  annotation(
    Placement(visible = true, transformation(origin = {31, 33}, extent = {{-13, -13}, {13, 13}}, rotation = -90)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation(
    Placement(visible = true, transformation(origin = {70, -30}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Sources.ExpSineVoltage Source(V = 0.1, damping = 10, freqHz = 100, offset = 0.2)  annotation(
    Placement(visible = true, transformation(origin = {-80, -16}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(
    Placement(visible = true, transformation(origin = {48, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(ground.p, OpAmp.in_p) annotation(
    Line(points = {{-20, -40}, {-18, -40}, {-18, -6}, {-16, -6}}, color = {0, 0, 255}));
  connect(R1.n, OpAmp.in_n) annotation(
    Line(points = {{-38, 16}, {-16, 16}, {-16, 16}, {-16, 16}}, color = {0, 0, 255}));
  connect(R3.n, OpAmp.out) annotation(
    Line(points = {{58, 60}, {76, 60}, {76, 4}, {26, 4}, {26, 6}}, color = {0, 0, 255}));
  connect(R2.n, R3.p) annotation(
    Line(points = {{8, 60}, {30, 60}, {30, 60}, {30, 60}}, color = {0, 0, 255}));
  connect(R2.p, OpAmp.in_n) annotation(
    Line(points = {{-20, 60}, {-20, 60}, {-20, 16}, {-16, 16}, {-16, 16}}, color = {0, 0, 255}));
  connect(R4.p, R3.p) annotation(
    Line(points = {{30, 46}, {30, 46}, {30, 60}, {30, 60}}, color = {0, 0, 255}));
  connect(voltageSensor.p, OpAmp.out) annotation(
    Line(points = {{70, -20}, {70, -20}, {70, 4}, {26, 4}, {26, 6}}, color = {0, 0, 255}));
  connect(voltageSensor.n, ground.p) annotation(
    Line(points = {{70, -40}, {-20, -40}, {-20, -40}, {-20, -40}}, color = {0, 0, 255}));
  connect(Source.n, ground.p) annotation(
    Line(points = {{-80, -26}, {-80, -26}, {-80, -40}, {-20, -40}, {-20, -40}}, color = {0, 0, 255}));
  connect(Source.p, R1.p) annotation(
    Line(points = {{-80, -6}, {-80, -6}, {-80, 16}, {-66, 16}, {-66, 16}}, color = {0, 0, 255}));
  connect(R4.n, ground1.p) annotation(
    Line(points = {{30, 20}, {48, 20}, {48, 20}, {48, 20}}, color = {0, 0, 255}));

annotation(
    uses(Modelica(version = "3.2.2")));
end InvertingAmplifierWithTBridgeMyTest;