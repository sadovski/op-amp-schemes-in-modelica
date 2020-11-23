model ClassicalInvertingAmplifierMyTest
  Modelica.Electrical.Analog.Basic.Resistor R1(R = 10000)  annotation(
    Placement(visible = true, transformation(origin = {-44, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(visible = true, transformation(origin = {-20, -46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R2(R = 100000)  annotation(
    Placement(visible = true, transformation(origin = {2, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.CosineVoltage V_IN(V = 0.1, freqHz = 100, offset = 0.2)  annotation(
    Placement(visible = true, transformation(origin = {-92, -24}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Ideal.IdealizedOpAmpLimted OpAmp annotation(
    Placement(visible = true, transformation(origin = {8, -11}, extent = {{-18, -19}, {18, 19}}, rotation = 0)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor V_OUT annotation(
    Placement(visible = true, transformation(origin = {26, -30}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor R_v_in(R = 100)  annotation(
    Placement(visible = true, transformation(origin = {-72, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(V_IN.n, ground.p) annotation(
    Line(points = {{-92, -34}, {-92, -36}, {-20, -36}}, color = {0, 0, 255}));
  connect(R1.n, OpAmp.in_n) annotation(
    Line(points = {{-34, 0}, {-10, 0}, {-10, 0}, {-10, 0}}, color = {0, 0, 255}));
  connect(OpAmp.in_p, ground.p) annotation(
    Line(points = {{-10, -22}, {-20, -22}, {-20, -36}, {-20, -36}, {-20, -36}}, color = {0, 0, 255}));
  connect(OpAmp.out, R2.n) annotation(
    Line(points = {{26, -10}, {24, -10}, {24, 32}, {12, 32}, {12, 32}}, color = {0, 0, 255}));
  connect(R2.p, OpAmp.in_n) annotation(
    Line(points = {{-8, 32}, {-10, 32}, {-10, 2}, {-10, 2}, {-10, 0}}, color = {0, 0, 255}));
  connect(V_OUT.p, OpAmp.out) annotation(
    Line(points = {{26, -20}, {26, -20}, {26, -10}, {26, -10}}, color = {0, 0, 255}));
  connect(V_OUT.n, ground.p) annotation(
    Line(points = {{26, -40}, {0, -40}, {0, -36}, {-20, -36}, {-20, -36}}, color = {0, 0, 255}));
  connect(R_v_in.n, R1.p) annotation(
    Line(points = {{-62, 0}, {-54, 0}, {-54, 0}, {-54, 0}}, color = {0, 0, 255}));
  connect(V_IN.p, R_v_in.p) annotation(
    Line(points = {{-92, -14}, {-92, -14}, {-92, 0}, {-82, 0}, {-82, 0}}, color = {0, 0, 255}));
  annotation(
    uses(Modelica(version = "3.2.2")));
end ClassicalInvertingAmplifierMyTest;