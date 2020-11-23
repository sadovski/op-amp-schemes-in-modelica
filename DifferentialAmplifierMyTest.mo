model DifferentialAmplifierMyTest
  Modelica.Electrical.Analog.Ideal.IdealizedOpAmpLimted OpAmp annotation(
    Placement(visible = true, transformation(origin = {34, -1}, extent = {{-14, -15}, {14, 15}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R1(R = 10000)  annotation(
    Placement(visible = true, transformation(origin = {-24, 8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R2(R = 500000)  annotation(
    Placement(visible = true, transformation(origin = {2, 30}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground g1 annotation(
    Placement(visible = true, transformation(origin = {-40, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.SineVoltage V_IN1(V = 0.1, freqHz = 100)  annotation(
    Placement(visible = true, transformation(origin = {-80, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Basic.Ground g2 annotation(
    Placement(visible = true, transformation(origin = {-60, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R3(R = 10000)  annotation(
    Placement(visible = true, transformation(origin = {-24, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R4(R = 500000)  annotation(
    Placement(visible = true, transformation(origin = {34, -28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation(
    Placement(visible = true, transformation(origin = {80, -10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground g3 annotation(
    Placement(visible = true, transformation(origin = {80, -44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground g4 annotation(
    Placement(visible = true, transformation(origin = {-84, -48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.SawToothVoltage V_IN2(V = 0.1, period = 0.01)  annotation(
    Placement(visible = true, transformation(origin = {-84, -20}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground g5 annotation(
    Placement(visible = true, transformation(origin = {48, -86}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor R5(R = 100000)  annotation(
    Placement(visible = true, transformation(origin = {48, -56}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
equation
  connect(R1.n, OpAmp.in_n) annotation(
    Line(points = {{-14, 8}, {20, 8}, {20, 8}, {20, 8}}, color = {0, 0, 255}));
  connect(R2.n, OpAmp.in_n) annotation(
    Line(points = {{2, 20}, {2, 20}, {2, 8}, {20, 8}, {20, 8}}, color = {0, 0, 255}));
  connect(g1.p, R2.p) annotation(
    Line(points = {{-40, 40}, {2, 40}, {2, 40}, {2, 40}}, color = {0, 0, 255}));
  connect(V_IN1.p, R1.p) annotation(
    Line(points = {{-80, 20}, {-80, 20}, {-80, 8}, {-34, 8}, {-34, 8}}, color = {0, 0, 255}));
  connect(V_IN1.n, g2.p) annotation(
    Line(points = {{-80, 40}, {-60, 40}, {-60, 40}, {-60, 40}}, color = {0, 0, 255}));
  connect(R3.n, OpAmp.in_p) annotation(
    Line(points = {{-14, -10}, {20, -10}, {20, -10}, {20, -10}}, color = {0, 0, 255}));
  connect(OpAmp.in_p, R4.p) annotation(
    Line(points = {{20, -10}, {20, -10}, {20, -28}, {24, -28}, {24, -28}}, color = {0, 0, 255}));
  connect(R4.n, OpAmp.out) annotation(
    Line(points = {{44, -28}, {48, -28}, {48, 0}, {48, 0}}, color = {0, 0, 255}));
  connect(OpAmp.out, voltageSensor.p) annotation(
    Line(points = {{48, 0}, {80, 0}, {80, 0}, {80, 0}}, color = {0, 0, 255}));
  connect(voltageSensor.n, g3.p) annotation(
    Line(points = {{80, -20}, {80, -20}, {80, -34}, {80, -34}}, color = {0, 0, 255}));
  connect(V_IN2.n, g4.p) annotation(
    Line(points = {{-84, -30}, {-84, -30}, {-84, -38}, {-84, -38}}, color = {0, 0, 255}));
  connect(V_IN2.p, R3.p) annotation(
    Line(points = {{-84, -10}, {-34, -10}, {-34, -12}, {-34, -12}, {-34, -10}, {-34, -10}}, color = {0, 0, 255}));
  connect(R5.p, OpAmp.out) annotation(
    Line(points = {{48, -46}, {48, -46}, {48, 0}, {48, 0}}, color = {0, 0, 255}));
  connect(R5.n, g5.p) annotation(
    Line(points = {{48, -66}, {48, -66}, {48, -76}, {48, -76}}, color = {0, 0, 255}));
  annotation(
    uses(Modelica(version = "3.2.2")));
end DifferentialAmplifierMyTest;