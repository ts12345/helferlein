import 'package:flutter/material.dart';
import 'package:helferlein/model/VectorSpaceModel.dart';
import 'package:helferlein/model/Vector.dart';
import 'package:scoped_model/scoped_model.dart';

class AddLineWidget extends StatelessWidget {
  static String xValue = "";
  static String yValue = "";
  static String zValue = "";
  static String nameValue = "";

  @override
  Widget build(BuildContext context) {
    var nameField = TextField(
      decoration: InputDecoration(labelText: "Namen festlegen"),
      onChanged: (text) {
        nameValue = text;
      },
      keyboardType: TextInputType.text,
    );
    var xField = TextField(
      decoration: InputDecoration(labelText: "x1-Wert festlegen"),
      onChanged: (text) {
        xValue = text;
      },
      keyboardType: TextInputType.numberWithOptions(
        signed: true,
        decimal: true,
      ),
    );
    var yField = TextField(
      decoration: InputDecoration(labelText: "x2-Wert festlegen"),
      onChanged: (text) {
        yValue = text;
      },
      keyboardType: TextInputType.numberWithOptions(
        signed: true,
        decimal: true,
      ),
    );
    var zField = TextField(
      decoration: InputDecoration(labelText: "x3-Wert festlegen"),
      onChanged: (text) {
        zValue = text;
      },
      keyboardType: TextInputType.numberWithOptions(
        signed: true,
        decimal: true,
      ),
    );

    return ScopedModelDescendant<VectorSpaceModel>(
      builder: (context, child, vsm) {
        void _addPoint() {
          double x = double.parse(xValue);
          double y = double.parse(yValue);
          double z = double.parse(zValue);
          vsm.addVector(new Vector(x, y, z, nameValue));
        }

        var button = Builder(
          builder: (context) => RaisedButton(
            child: Text('Vektor anlegen'),
            onPressed: () {
              var scaff = Scaffold.of(context);
              try {
                _addPoint();

                final snackBar = SnackBar(
                  content: Text('Vektor angelegt'),
                  duration: Duration(seconds: 3),
                );
                scaff.showSnackBar(snackBar);
              } catch (e) {
                print(e.toString());
                final snackBar = SnackBar(
                  content: Text('Fehlerhafte Werte!'),
                  duration: Duration(seconds: 3),
                );
                scaff.showSnackBar(snackBar);
              }
            },
          ),
        );
        return Scaffold(
          appBar: AppBar(
            title: Text("Vektor eingeben"),
          ),
          body: Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[nameField, xField, yField, zField, button],
            ),
          ),
        );
      },
    );
  }
}
