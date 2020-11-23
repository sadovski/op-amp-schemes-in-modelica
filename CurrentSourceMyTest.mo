model CurrentSourceMyTest
  Modelica.Electrical.Analog.Ideal.IdealizedOpAmpLimted OpAmp annotation(
    Placement(visible = true, transformation(origin = {39, 9}, extent = {{-17, 15}, {17, -15}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R1(R = 10000)  annotation(
    Placement(visible = true, transformation(origin = {0, -30}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground g1 annotation(
    Placement(visible = true, transformation(origin = {0, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor Rload(R = 100)  annotation(
    Placement(visible = true, transformation(origin = {30, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage V_Ref(V = 3)  annotation(
    Placement(visible = true, transformation(origin = {-48, 8}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground g2 annotation(
    Placement(visible = true, transformation(origin = {-48, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(R1.n, g1.p) annotation(
    Line(points = {{0, -40}, {0, -40}, {0, -50}, {0, -50}, {0, -50}}, color = {0, 0, 255}));
  connect(R1.p, OpAmp.in_n) annotation(
    Line(points = {{0, -20}, {0, -20}, {0, 0}, {22, 0}, {22, 0}}, color = {0, 0, 255}));
  connect(Rload.p, R1.p) annotation(
    Line(points = {{20, -20}, {0, -20}, {0, -20}, {0, -20}}, color = {0, 0, 255}));
  connect(Rload.n, OpAmp.out) annotation(
    Line(points = {{40, -20}, {60, -20}, {60, 10}, {56, 10}, {56, 10}}, color = {0, 0, 255}));
  connect(V_Ref.p, OpAmp.in_p) annotation(
    Line(points = {{-48, 18}, {22, 18}, {22, 18}, {22, 18}}, color = {0, 0, 255}));
  connect(V_Ref.n, g2.p) annotation(
    Line(points = {{-48, -2}, {-48, -2}, {-48, -12}, {-48, -12}}, color = {0, 0, 255}));

annotation(
    uses(Modelica(version = "3.2.2")));
end CurrentSourceMyTest;