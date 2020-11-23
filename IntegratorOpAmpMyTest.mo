model IntegratorOpAmpMyTest
  Modelica.Electrical.Analog.Basic.Resistor R(R = 158000)  annotation(
    Placement(visible = true, transformation(origin = {-54, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Capacitor C(C = 0.00000005)  annotation(
    Placement(visible = true, transformation(origin = {-32, -12}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Ideal.IdealizedOpAmpLimted OpAmp annotation(
    Placement(visible = true, transformation(origin = {-6, 40}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground g1 annotation(
    Placement(visible = true, transformation(origin = {-32, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation(
    Placement(visible = true, transformation(origin = {50, -10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground g2 annotation(
    Placement(visible = true, transformation(origin = {50, -44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R2(R = 100000)  annotation(
    Placement(visible = true, transformation(origin = {28, -18}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground g3 annotation(
    Placement(visible = true, transformation(origin = {28, -44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.SawToothVoltage V_IN(V = 1, period = 0.2)  annotation(
    Placement(visible = true, transformation(origin = {-80, -8}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground g4 annotation(
    Placement(visible = true, transformation(origin = {-80, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(R.n, OpAmp.in_p) annotation(
    Line(points = {{-44, 30}, {-32, 30}, {-32, 46}, {-16, 46}}, color = {0, 0, 255}));
  connect(C.p, OpAmp.in_p) annotation(
    Line(points = {{-32, -2}, {-32, 46}, {-16, 46}}, color = {0, 0, 255}));
  connect(C.n, g1.p) annotation(
    Line(points = {{-32, -22}, {-32, -22}, {-32, -30}, {-32, -30}}, color = {0, 0, 255}));
  connect(OpAmp.out, OpAmp.in_n) annotation(
    Line(points = {{0, 24}, {20, 24}, {20, 0}, {-20, 0}, {-20, 18}, {-20, 18}}, color = {0, 0, 255}));
  connect(voltageSensor.p, OpAmp.out) annotation(
    Line(points = {{50, 0}, {50, 40}, {4, 40}}, color = {0, 0, 255}));
  connect(g2.p, voltageSensor.n) annotation(
    Line(points = {{50, -34}, {50, -34}, {50, -20}, {50, -20}}, color = {0, 0, 255}));
  connect(R2.p, OpAmp.out) annotation(
    Line(points = {{28, -8}, {28, 40}, {4, 40}}, color = {0, 0, 255}));
  connect(R2.n, g3.p) annotation(
    Line(points = {{28, -28}, {28, -28}, {28, -34}, {28, -34}}, color = {0, 0, 255}));
  connect(V_IN.p, R.p) annotation(
    Line(points = {{-80, 2}, {-80, 2}, {-80, 30}, {-64, 30}, {-64, 30}}, color = {0, 0, 255}));
  connect(V_IN.n, g4.p) annotation(
    Line(points = {{-80, -18}, {-80, -18}, {-80, -30}, {-80, -30}}, color = {0, 0, 255}));
  annotation(
    uses(Modelica(version = "3.2.2")));
end IntegratorOpAmpMyTest;