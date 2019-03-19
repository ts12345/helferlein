import 'package:scoped_model/scoped_model.dart';
import 'Point.dart';

class VectorSpaceModel extends Model {
  List<Point> points = [];

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

  void deletePoint(int index) {
    points.removeAt(index);
    notifyListeners();
  }

  Point getPointAt(int index) {
    return points.elementAt(index);
  }

  List<Point> getPoints() => points;
}
