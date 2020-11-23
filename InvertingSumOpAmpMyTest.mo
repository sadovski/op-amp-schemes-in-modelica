model InvertingSumOpAmpMyTest
  Modelica.Electrical.Analog.Ideal.IdealizedOpAmpLimted OpAmp annotation(
    Placement(visible = true, transformation(origin = {4, -11}, extent = {{-16, -17}, {16, 17}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R4(R = 30100)  annotation(
    Placement(visible = true, transformation(origin = {10, 36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R1(R = 10000)  annotation(
    Placement(visible = true, transformation(origin = {-50, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R2(R = 20000)  annotation(
    Placement(visible = true, transformation(origin = {-50, -26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation(
    Placement(visible = true, transformation(origin = {40, -46}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground g1 annotation(
    Placement(visible = true, transformation(origin = {40, -78}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.SineVoltage V_IN1(V = 0.1, freqHz = 100000, phase = 1.047197551196598)  annotation(
    Placement(visible = true, transformation(origin = {-80, 10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground g2 annotation(
    Placement(visible = true, transformation(origin = {-68, -100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R5(R = 100000)  annotation(
    Placement(visible = true, transformation(origin = {20, -44}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Sources.SineVoltage V_IN2(V = 0.2, freqHz = 100, phase = 0)  annotation(
    Placement(visible = true, transformation(origin = {-90, -40}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground g3 annotation(
    Placement(visible = true, transformation(origin = {-90, -100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.SineVoltage V_IN3(V = 0.3, freqHz = 50, phase = 0)  annotation(
    Placement(visible = true, transformation(origin = {-116, -78}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground g4 annotation(
    Placement(visible = true, transformation(origin = {-116, -102}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R3(R = 30100)  annotation(
    Placement(visible = true, transformation(origin = {-50, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(OpAmp.out, R4.n) annotation(
    Line(points = {{20, -10}, {20, -10}, {20, 36}, {20, 36}}, color = {0, 0, 255}));
  connect(R4.p, OpAmp.in_n) annotation(
    Line(points = {{0, 36}, {-18, 36}, {-18, 0}, {-14, 0}, {-14, 0}, {-12, 0}}, color = {0, 0, 255}));
  connect(R1.n, OpAmp.in_n) annotation(
    Line(points = {{-40, 20}, {-38, 20}, {-38, 0}, {-12, 0}, {-12, 0}}, color = {0, 0, 255}));
  connect(R2.n, OpAmp.in_n) annotation(
    Line(points = {{-40, -26}, {-38, -26}, {-38, 0}, {-12, 0}}, color = {0, 0, 255}));
  connect(voltageSensor.p, OpAmp.out) annotation(
    Line(points = {{40, -36}, {40, -36}, {40, -20}, {20, -20}, {20, -10}, {20, -10}}, color = {0, 0, 255}));
  connect(g1.p, voltageSensor.n) annotation(
    Line(points = {{40, -68}, {40, -68}, {40, -56}, {40, -56}}, color = {0, 0, 255}));
  connect(OpAmp.in_p, g1.p) annotation(
    Line(points = {{-12, -22}, {-12, -22}, {-12, -68}, {40, -68}, {40, -68}}, color = {0, 0, 255}));
  connect(V_IN1.p, R1.p) annotation(
    Line(points = {{-80, 20}, {-60, 20}, {-60, 20}, {-60, 20}}, color = {0, 0, 255}));
  connect(g2.p, V_IN1.n) annotation(
    Line(points = {{-68, -90}, {-68, -13}, {-80, -13}, {-80, 0}}, color = {0, 0, 255}));
  connect(R5.p, OpAmp.out) annotation(
    Line(points = {{20, -34}, {20, -34}, {20, -10}, {20, -10}}, color = {0, 0, 255}));
  connect(R5.n, g1.p) annotation(
    Line(points = {{20, -54}, {22, -54}, {22, -68}, {40, -68}, {40, -68}}, color = {0, 0, 255}));
  connect(V_IN2.p, R2.p) annotation(
    Line(points = {{-90, -30}, {-90, -30}, {-90, -26}, {-60, -26}, {-60, -26}}, color = {0, 0, 255}));
  connect(g3.p, V_IN2.n) annotation(
    Line(points = {{-90, -90}, {-90, -90}, {-90, -50}, {-90, -50}}, color = {0, 0, 255}));
  connect(V_IN3.n, g4.p) annotation(
    Line(points = {{-116, -88}, {-116, -88}, {-116, -92}, {-116, -92}}, color = {0, 0, 255}));
  connect(V_IN3.p, R3.p) annotation(
    Line(points = {{-116, -68}, {-116, -68}, {-116, -60}, {-60, -60}, {-60, -60}}, color = {0, 0, 255}));
  connect(R3.n, OpAmp.in_n) annotation(
    Line(points = {{-40, -60}, {-38, -60}, {-38, 0}, {-12, 0}, {-12, 0}}, color = {0, 0, 255}));
  annotation(
    uses(Modelica(version = "3.2.2")));
end InvertingSumOpAmpMyTest;