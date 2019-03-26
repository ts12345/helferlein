import 'package:scoped_model/scoped_model.dart';
import 'Point.dart';
import 'Vector.dart';
import 'Plane.dart';

class VectorSpaceModel extends Model {
  List<Point> points = [];
  List<Vector> vectors = [];
  List<Plane> planes = [];

  VectorSpaceModel() {
    testPoints();
    testVectorProdukt();
    testPlane();
    testAddition();
    testSubtraktion();
  }
  void testPoints() {
    Point p1 = Point(1, 2, 3, "A");
    Point p2 = Point(3, 1, 2, "B");

    addPoint(p1);
    addPoint(p2);
  }

  void testPlane() {
    Plane p1 = Plane(1, 2, 3, 4, "P1");
    Plane p2 = Plane(4, 3, 2, 1, "P2");
    addPlane(p1);
    addPlane(p2);
  }

  void testVectorProdukt() {
    Vector a = new Vector(1, 2, 3, "A");
    Vector b = new Vector(3, 2, 1, "B");
    addVector(a);
    addVector(b);
    addVector(vectorProdukt(a, b));
  }

  void addPoint(Point p) {
    points.add(p);
    print(this.toString() + p.getString());
    notifyListeners();
  }

  void addVector(Vector v) {
    vectors.add(v);
    print(this.toString() + v.getString());
    notifyListeners();
  }

  void addPlane(Plane p) {
    planes.add(p);
    print(this.toString() + p.getString());
    notifyListeners();
  }

  void deletePoint(int index) {
    points.removeAt(index);
    notifyListeners();
  }

  void deleteVector(int index) {
    vectors.removeAt(index);
    notifyListeners();
  }

  void deletePlaneAt(int index) {
    planes.removeAt(index);
    notifyListeners();
  }

  Point getPointAt(int index) {
    return points.elementAt(index);
  }

  Vector getVectorAt(int index) {
    return vectors.elementAt(index);
  }

  Plane getPlaneAt(int index) {
    return planes.elementAt(index);
  }

  Vector vectorProdukt(Vector v1, Vector v2) {
    Vector e = new Vector(0, 0, 0, "");
    e.x = (v1.y * v2.z) - (v1.z * v2.y);
    e.y = (v1.z * v2.x) - (v1.x * v2.z);
    e.z = (v1.x * v2.y) - (v1.y * v2.x);
    e.name = v1.name + "x" + v2.name;
    return e;
  }

  double vectorSkalarprodukt(Vector v1, Vector v2) {
    return (v1.x * v2.x) + (v1.y * v2.y) + (v1.z * v2.z);
  }

  Vector vectorAddition(Vector v1, Vector v2) {
    Vector e = new Vector(0, 0, 0, "");
    e.x = v1.x + v2.x;
    e.y = v1.y + v2.y;
    e.z = v1.z + v2.z;
    return (e);
  }

  void testAddition() {
    Vector v1 = new Vector(4, 5, 6, "aaa");
    Vector v2 = new Vector(1, 2, 3, "bbb");
    addVector(v1);
    addVector(v2);
    addVector(vectorAddition(v1, v2));
  }

  Vector vectorSubtraktion(Vector v1, Vector v2) {
    Vector e = new Vector(0, 0, 0, "");
    e.x = v1.x - v2.x;
    e.y = v1.y - v2.y;
    e.z = v1.z - v2.z;
    return (e);
  }

  void testSubtraktion() {
    Vector v1 = new Vector(4, 5, 6, "aaa");
    Vector v2 = new Vector(1, 2, 3, "bbb");
    addVector(v1);
    addVector(v2);
    addVector(vectorSubtraktion(v1, v2));
  }

  List<Point> getPoints() => points;

  List<Vector> getVectors() => vectors;

  List<Plane> getPlanes() => planes;
}
