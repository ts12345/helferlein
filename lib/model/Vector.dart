import "Point.dart";

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

  Vector.connectionVector(Point a, Point b) {
    this.x = b.x - a.x;
    this.y = b.y - a.y;
    this.z = b.z - a.z;
    this.name = a.getName() + b.getName();
  }
}
