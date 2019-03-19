import 'package:flutter/material.dart';
import 'package:helferlein/model/VectorSpaceModel.dart';
import 'package:helferlein/model/Plane.dart';
import 'package:scoped_model/scoped_model.dart';

class AddPlaneWidget extends StatelessWidget {
  String aValue;
  String bValue;
  String cValue;
  String dValue;
  String nameValue = "E1";

  @override
  Widget build(BuildContext context) {
    var nameField = TextField(
      decoration: new InputDecoration(labelText: "Namen festlegen"),
      onChanged: (text) {
        nameValue = text;
      },
      keyboardType: TextInputType.text,
    );
    var aField = TextField(
      decoration: new InputDecoration(labelText: "a-Wert festlegen"),
      onChanged: (text) {
        aValue = text;
      },
      keyboardType: TextInputType.numberWithOptions(
        signed: true,
        decimal: true,
      ),
    );
    var bField = TextField(
      decoration: new InputDecoration(labelText: "b-Wert festlegen"),
      onChanged: (text) {
        bValue = text;
      },
      keyboardType: TextInputType.numberWithOptions(
        signed: true,
        decimal: true,
      ),
    );
    var cField = TextField(
      decoration: new InputDecoration(labelText: "c-Wert festlegen"),
      onChanged: (text) {
        cValue = text;
      },
      keyboardType: TextInputType.numberWithOptions(
        signed: true,
        decimal: true,
      ),
    );
    var dField = TextField(
      decoration: new InputDecoration(labelText: "d-Wert festlegen"),
      onChanged: (text) {
        dValue = text;
      },
      keyboardType: TextInputType.numberWithOptions(
        signed: true,
        decimal: true,
      ),
    );
    return ScopedModelDescendant<VectorSpaceModel>(
      builder: (context, child, vsm) {
        void _addPlane() {
          double a = double.parse(aValue);
          double b = double.parse(bValue);
          double c = double.parse(cValue);
          double d = double.parse(dValue);
          vsm.addPlane(new Plane(a, b, c, d, nameValue));
        }

        var button = new Builder(
          builder: (context) => RaisedButton(
                child: Text('Plane anlegen'),
                onPressed: () {
                  var scaff = Scaffold.of(context);
                  try {
                    _addPlane();

                    final snackBar = SnackBar(
                      content: Text('Plane angelegt'),
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
            title: Text("Plane eingeben"),
          ),
          body: Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                nameField,
                aField,
                bField,
                cField,
                dField,
                button
              ],
            ),
          ),
        );
      },
    );
  }
}
