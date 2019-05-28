import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:helferlein/model/Line.dart';
import 'package:helferlein/model/VectorSpaceModel.dart';

import 'package:helferlein/ui/LineWidget.dart';
import 'package:helferlein/ui/LineEmptyWidget.dart';
import 'package:helferlein/ui/AddLineWidget.dart';


class LineListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<VectorSpaceModel>(
      builder: (context, child, vsm) {
        List<Line> lines = vsm.getLines();

        List<Widget> lineWidgets = lines.map((line) {
          return Container(
            child: Row(
              children: [
                Expanded(child:Text(" ")),
                LineWidget(line),
                Expanded(child:Text(" ")),
                IconButton(
                  icon: Icon(Icons.remove_circle_outline),
                  onPressed: () {
                    int index = lines.indexOf(line);
                    vsm.deleteVector(index);
                  },
                ),
              ],
            ),
          );
        }).toList();
        List<Widget> widgets = List<Widget>();


        widgets.addAll(lineWidgets);

        widgets.add(
          Row(
            children: [
              Expanded(child:Text(" ")),
              LineEmptyWidget(),
              Expanded(child:Text(" ")),
              IconButton(
                icon: Icon(Icons.add_circle_outline),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddLineWidget()));
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
