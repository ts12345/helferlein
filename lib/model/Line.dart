import "Vector.dart";
import "Point.dart";

class Line {
  Vector aufpunkt;
  Vector richtung;
  String name;

  Line(Vector aufpunkt, Vector richtung, String name) {
    this.aufpunkt = aufpunkt;
    this.richtung = richtung;
    this.name = name;
  }

  Line.connection(Point a, Point v, String name) {
    richtung = new Vector.connectionVector(a, v);
    aufpunkt = new Vector(a.x, a.y, a.z, "AUFPUNKT");
    this.name = name;
  }

  String getString() {
    return name + "=" + aufpunkt.getString() + "lambda" + richtung.getString();
  }
}
