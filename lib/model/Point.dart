class Point {
  double x;
  double y;
  double z;

  String name;


  Point(this.x, this.y, this.z, this.name);

  String getString() {
    return name + "(" + x.toString() + "|" + y.toString() + "|" + z.toString() + ")";
  }
}
