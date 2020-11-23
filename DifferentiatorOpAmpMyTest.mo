model DifferentiatorOpAmpMyTest
  Modelica.Electrical.Analog.Basic.Ground g1 annotation(
    Placement(visible = true, transformation(origin = {-14, -62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.SawToothVoltage V_IN(V = 1, period = 0.01)  annotation(
    Placement(visible = true, transformation(origin = {-80, -24}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground g2 annotation(
    Placement(visible = true, transformation(origin = {-80, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R2(R = 100000)  annotation(
    Placement(visible = true, transformation(origin = {54, -30}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground g3 annotation(
    Placement(visible = true, transformation(origin = {54, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation(
    Placement(visible = true, transformation(origin = {80, -28}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Ideal.IdealizedOpAmpLimted OpAmp annotation(
    Placement(visible = true, transformation(origin = {33, -8.88178e-16}, extent = {{-21, -22}, {21, 22}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R(R = 15800) annotation(
    Placement(visible = true, transformation(origin = {-14, -34}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Capacitor C(C = 0.00000005)  annotation(
    Placement(visible = true, transformation(origin = {-44, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(g2.p, V_IN.n) annotation(
    Line(points = {{-80, -50}, {-80, -50}, {-80, -34}, {-80, -34}}, color = {0, 0, 255}));
  connect(R2.n, g3.p) annotation(
    Line(points = {{54, -40}, {54, -40}, {54, -50}, {54, -50}}, color = {0, 0, 255}));
  connect(R2.p, OpAmp.out) annotation(
    Line(points = {{54, -20}, {54, -20}, {54, 0}, {54, 0}}, color = {0, 0, 255}));
  connect(OpAmp.out, OpAmp.in_n) annotation(
    Line(points = {{54, 0}, {80, 0}, {80, 40}, {0, 40}, {0, 14}, {12, 14}, {12, 14}}, color = {0, 0, 255}));
  connect(voltageSensor.p, OpAmp.out) annotation(
    Line(points = {{80, -18}, {80, -18}, {80, 0}, {54, 0}, {54, 0}}, color = {0, 0, 255}));
  connect(voltageSensor.n, g3.p) annotation(
    Line(points = {{80, -38}, {80, -38}, {80, -50}, {54, -50}, {54, -50}}, color = {0, 0, 255}));
  connect(R.p, OpAmp.in_p) annotation(
    Line(points = {{-14, -24}, {-14, -24}, {-14, -14}, {12, -14}, {12, -14}}, color = {0, 0, 255}));
  connect(R.n, g1.p) annotation(
    Line(points = {{-14, -44}, {-14, -44}, {-14, -52}, {-14, -52}}, color = {0, 0, 255}));
  connect(C.n, OpAmp.in_p) annotation(
    Line(points = {{-34, -14}, {10, -14}, {10, -14}, {12, -14}}, color = {0, 0, 255}));
  connect(C.p, V_IN.p) annotation(
    Line(points = {{-54, -14}, {-80, -14}, {-80, -14}, {-80, -14}}, color = {0, 0, 255}));
  annotation(
    uses(Modelica(version = "3.2.2")));
end DifferentiatorOpAmpMyTest;