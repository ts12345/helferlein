class Vector {
  double x;
  double y;
  double z;

  String name;

  Vector(this.x, this.y, this.z, this.name);

  String getString() {
    return name +
        "(" +
        x.toString() +
        "|" +
        y.toString() +
        "|" +
        z.toString() +
        ")^T";
  }

  String getName() {
    return name;
  }
}
