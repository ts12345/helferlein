import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:helferlein/model/Plane.dart';
import 'package:helferlein/model/VectorSpaceModel.dart';

import 'package:helferlein/ui/PlaneWidget.dart';
import 'package:helferlein/ui/PlaneEmtpyWidget.dart';
import 'package:helferlein/ui/AddPlaneWidget.dart';

class PlaneListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<VectorSpaceModel>(
      builder: (context, child, vsm) {
        List<Plane> planes = vsm.getPlanes();

        List<Widget> planeWidgets = planes.map((plane) {
          return Container(
            child: new Row(
              children: [
                new Text(planes.indexOf(plane).toString()),
                new Expanded(child: new PlaneWidget(plane)),
                new IconButton(
                  icon: new Icon(Icons.remove_circle_outline),
                  onPressed: () {
                    int index = planes.indexOf(plane);
                    vsm.deletePlaneAt(index);
                  },
                ),
              ],
            ),
          );
        }).toList();

        List<Widget> widgets = new List<Widget>();

        widgets.add(Text("Planes",
            style: new TextStyle(
              fontFamily: "Roboto",
              fontWeight: FontWeight.w600,
              fontSize: 36.0,
            )));

        widgets.addAll(planeWidgets);

        widgets.add(
          new Row(
            children: [
              new Text(""),
              new Expanded(child: new PlaneEmptyWidget()),
              new IconButton(
                icon: new Icon(Icons.add_circle_outline),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddPlaneWidget()));
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
