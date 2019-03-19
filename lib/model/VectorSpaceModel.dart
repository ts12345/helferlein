import 'package:scoped_model/scoped_model.dart';
import 'Point.dart';
import 'Vector.dart';

class VectorSpaceModel extends Model {
  List<Point> points = [];
  List<Vector> vectors = [];

  VectorSpaceModel() {
    Point p1 = new Point(1, 2, 3, "A");
    Point p2 = new Point(3, 1, 2, "B");

    addPoint(p1);
    addPoint(p2);
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

  void deletePoint(int index) {
    points.removeAt(index);
    notifyListeners();
  }

  void deleteVector(int index) {
    vectors.removeAt(index);
    notifyListeners();
  }

  Point getPointAt(int index) {
    return points.elementAt(index);
  }

  Vector getVectorAt(int index) {
    return vectors.elementAt(index);
  }

  List<Point> getPoints() => points;

  List<Vector> getVectors() => vectors;
}
