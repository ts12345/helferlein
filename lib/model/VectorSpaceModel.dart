import 'package:scoped_model/scoped_model.dart';
import 'Point.dart';
import 'Vector.dart';
import 'Plane.dart';

class VectorSpaceModel extends Model {
  List<Point> points = [];
  List<Vector> vectors = [];
  List<Plane> planes = [];

  VectorSpaceModel() {
    Point p1 = Point(1, 2, 3, "A");
    Point p2 = Point(3, 1, 2, "B");

    addPoint(p1);
    addPoint(p2);

    testPlane();
  }

  void testPlane() {
    Plane p1 = Plane(1, 2, 3, 4, "P1");
    Plane p2 = Plane(4, 3, 2, 1, "P2");
    addPlane(p1);
    addPlane(p2);
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

  List<Point> getPoints() => points;

  List<Vector> getVectors() => vectors;

  List<Plane> getPlanes() => planes;
}
