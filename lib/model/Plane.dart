class Plane {
  double a;
  double b;
  double c;
  double d;

  String name;

  Plane(this.a, this.b, this.c, this.d, this.name);

  String getString() {
    return name +
        ": " +
        value(a) +
        "x + " +
        value(b) +
        "y + " +
        value(c) +
        "z = " +
        value(d);
  }
}

String value(double value) {
  int a = value.toInt();
  if (value / a.toDouble() == 1)
    return a.toString();
  else
    return value.toString();
}
