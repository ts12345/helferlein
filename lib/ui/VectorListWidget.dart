import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:helferlein/model/Vector.dart';
import 'package:helferlein/model/VectorSpaceModel.dart';

import 'package:helferlein/ui/VectorWidget.dart';
import 'package:helferlein/ui/VectorEmptyWidget.dart';
import 'package:helferlein/ui/AddVectorWidget.dart';

class VectorListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<VectorSpaceModel>(
      builder: (context, child, vsm) {
        List<Vector> vectors = vsm.getVectors();

        List<Widget> vectorWidgets = vectors.map((vector) {
          return Container(
            child: Row(
              children: [
                Text(vectors.indexOf(vector).toString()),
                Expanded(child: VectorWidget(vector)),
                IconButton(
                  icon: Icon(Icons.remove_circle_outline),
                  onPressed: () {
                    int index = vectors.indexOf(vector);
                    vsm.deleteVector(index);
                  },
                ),
              ],
            ),
          );
        }).toList();
        List<Widget> widgets = List<Widget>();

        widgets.add(Text("Vektoren",
            style: TextStyle(
              fontFamily: "Roboto",
              fontWeight: FontWeight.w600,
              fontSize: 36.0,
            )));

        widgets.addAll(vectorWidgets);

        widgets.add(
          Row(
            children: [
              Text(""),
              Expanded(child: VectorEmptyWidget()),
              IconButton(
                icon: Icon(Icons.add_circle_outline),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddVectorWidget()));
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
