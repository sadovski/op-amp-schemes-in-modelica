model InvertingOpAmpUnipolarSourceMyTest
  Modelica.Electrical.Analog.Ideal.IdealizedOpAmpLimted OpAmp annotation(
    Placement(visible = true, transformation(origin = {13, 39}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage V3(V = 0.4)  annotation(
    Placement(visible = true, transformation(origin = {40, -12}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor R3(R = 10000)  annotation(
    Placement(visible = true, transformation(origin = {18, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R4(R = 100000)  annotation(
    Placement(visible = true, transformation(origin = {-22, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground g1 annotation(
    Placement(visible = true, transformation(origin = {-40, -26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R1(R = 10000)  annotation(
    Placement(visible = true, transformation(origin = {-28, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R2(R = 100000)  annotation(
    Placement(visible = true, transformation(origin = {24, 72}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation(
    Placement(visible = true, transformation(origin = {66, 20}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground g2 annotation(
    Placement(visible = true, transformation(origin = {60, -46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.ExpSineVoltage Source(V = 0.1, damping = 10, freqHz = 100, offset = 0.2)  annotation(
    Placement(visible = true, transformation(origin = {-74, 36}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground g3 annotation(
    Placement(visible = true, transformation(origin = {-74, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(R3.p, R4.n) annotation(
    Line(points = {{8, 0}, {-12, 0}, {-12, 0}, {-12, 0}}, color = {0, 0, 255}));
  connect(g1.p, R4.p) annotation(
    Line(points = {{-40, -16}, {-40, -16}, {-40, 0}, {-32, 0}, {-32, 0}}, color = {0, 0, 255}));
  connect(V3.p, R3.n) annotation(
    Line(points = {{40, -2}, {40, -2}, {40, 0}, {28, 0}, {28, 0}}, color = {0, 0, 255}));
  connect(R3.p, OpAmp.in_p) annotation(
    Line(points = {{8, 0}, {-2, 0}, {-2, 30}, {-2, 30}}, color = {0, 0, 255}));
  connect(R1.n, OpAmp.in_n) annotation(
    Line(points = {{-18, 48}, {-2, 48}, {-2, 48}, {-2, 48}}, color = {0, 0, 255}));
  connect(R2.p, OpAmp.in_n) annotation(
    Line(points = {{14, 72}, {-2, 72}, {-2, 48}, {-2, 48}}, color = {0, 0, 255}));
  connect(OpAmp.out, R2.n) annotation(
    Line(points = {{28, 40}, {36, 40}, {36, 40}, {40, 40}, {40, 72}, {34, 72}, {34, 72}}, color = {0, 0, 255}));
  connect(OpAmp.out, voltageSensor.p) annotation(
    Line(points = {{28, 40}, {66, 40}, {66, 30}, {66, 30}}, color = {0, 0, 255}));
  connect(g2.p, V3.n) annotation(
    Line(points = {{60, -36}, {60, -36}, {60, -22}, {40, -22}, {40, -22}}, color = {0, 0, 255}));
  connect(g2.p, voltageSensor.n) annotation(
    Line(points = {{60, -36}, {66, -36}, {66, 10}, {66, 10}}, color = {0, 0, 255}));
  connect(R1.p, Source.p) annotation(
    Line(points = {{-38, 48}, {-74, 48}, {-74, 46}, {-74, 46}, {-74, 46}}, color = {0, 0, 255}));
  connect(Source.n, g3.p) annotation(
    Line(points = {{-74, 26}, {-74, 26}, {-74, 12}, {-74, 12}}, color = {0, 0, 255}));

annotation(
    uses(Modelica(version = "3.2.2")));
end InvertingOpAmpUnipolarSourceMyTest;