import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:helferlein/model/Point.dart';
import 'package:helferlein/model/VectorSpaceModel.dart';

import 'package:helferlein/ui/PointWidget.dart';
import 'package:helferlein/ui/PointEmtpyWidget.dart';
import 'package:helferlein/ui/AddPointWidget.dart';

class PointListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<VectorSpaceModel>(
      builder: (context, child, vsm) {
        List<Point> points = vsm.getPoints();

        List<Widget> pointWidgets = points.map((point) {
          return Container(
            child: Row(
              children: [
                Text(points.indexOf(point).toString()),
                Expanded(child: PointWidget(point)),
                IconButton(
                  icon: Icon(Icons.remove_circle_outline),
                  onPressed: () {
                    int index = points.indexOf(point);
                    vsm.deletePoint(index);
                  },
                ),
              ],
            ),
          );
        }).toList();

        List<Widget> widgets = List<Widget>();

        widgets.add(Text("Punkte",
            style: TextStyle(
              fontFamily: "Roboto",
              fontWeight: FontWeight.w600,
              fontSize: 36.0,
            )));

        widgets.addAll(pointWidgets);

        widgets.add(
          Row(
            children: [
              Text(""),
              Expanded(child: PointEmptyWidget()),
              IconButton(
                icon: Icon(Icons.add_circle_outline),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddPointWidget()));
                },
              ),
            ],
          ),
        );

        return Column(children: widgets);
      },
      // Build the expensive widget here.
      child: Text("SomeExpensiveWidget()"),
    );
  }
}
