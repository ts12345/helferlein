class Point {
  double x;
  double y;
  double z;

  String name;

  Point(this.x, this.y, this.z, this.name);

  String getString() {
    return name + "(" + value(x) + "|" + value(y) + "|" + value(z) + ")";
  }

  String value(double value) {
    int a = value.toInt();
    if (value / a.toDouble() == 1)
      return a.toString();
    else
      return value.toString();
  }

  String getName() {
    return name;
  }
}
