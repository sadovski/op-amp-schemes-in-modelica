model NoninvertingOpAmpMyTest
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(
    Placement(visible = true, transformation(origin = {-2, -52}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R1(R = 9530)  annotation(
    Placement(visible = true, transformation(origin = {34, 38}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor R2(R = 1050)  annotation(
    Placement(visible = true, transformation(origin = {34, 66}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor R3(R = 100000)  annotation(
    Placement(visible = true, transformation(origin = {34, -10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Ideal.IdealizedOpAmpLimted OpAmp(useSupply = false)  annotation(
    Placement(visible = true, transformation(origin = {-13, 28}, extent = {{-19, -16}, {19, 16}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.SineVoltage Source(V = 0.1, freqHz = 100, offset = 0.2)  annotation(
    Placement(visible = true, transformation(origin = {-32, -16}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
equation
  connect(R2.n, R1.p) annotation(
    Line(points = {{34, 56}, {34, 56}, {34, 48}, {34, 48}}, color = {0, 0, 255}));
  connect(R3.n, ground1.p) annotation(
    Line(points = {{34, -20}, {14, -20}, {14, -42}, {-2, -42}}, color = {0, 0, 255}));
  connect(R2.p, ground1.p) annotation(
    Line(points = {{34, 76}, {52, 76}, {52, -42}, {-2, -42}, {-2, -42}, {-2, -42}}, color = {0, 0, 255}));
  connect(OpAmp.out, R1.n) annotation(
    Line(points = {{6, 28}, {34, 28}, {34, 28}, {34, 28}}, color = {0, 0, 255}));
  connect(OpAmp.in_n, R2.n) annotation(
    Line(points = {{-32, 38}, {-32, 38}, {-32, 56}, {34, 56}, {34, 56}}, color = {0, 0, 255}));
  connect(R3.p, R1.n) annotation(
    Line(points = {{34, 0}, {34, 0}, {34, 28}, {34, 28}}, color = {0, 0, 255}));
  connect(Source.p, OpAmp.in_p) annotation(
    Line(points = {{-32, -6}, {-32, -6}, {-32, 18}, {-32, 18}}, color = {0, 0, 255}));
  connect(Source.n, ground1.p) annotation(
    Line(points = {{-32, -26}, {-32, -26}, {-32, -42}, {-2, -42}, {-2, -42}}, color = {0, 0, 255}));
  annotation(
    uses(Modelica(version = "3.2.2")));
end NoninvertingOpAmpMyTest;