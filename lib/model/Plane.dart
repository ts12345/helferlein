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
        a.toString() +
        "x + " +
        b.toString() +
        "y + " +
        c.toString() +
        "z = " +
        d.toString();
  }
}
