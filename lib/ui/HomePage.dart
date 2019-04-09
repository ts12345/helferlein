import 'package:flutter/material.dart';
import 'package:helferlein/ui/AddPointWidget.dart';
import 'package:helferlein/ui/AnimateExpanded.dart';
import 'package:helferlein/ui/PlaneListWidget.dart';
import 'package:helferlein/ui/PointListWidget.dart';
import 'package:helferlein/ui/VectorListWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Helferlein"),
      ),
      body: ListView(
        children: <Widget>[
          new SingleChildScrollView(
            child: new SafeArea(
              child: new Material(
                child: new ExpansionList(
                  [
                    new ListItem(
                        title: "Punkte",
                        subtitle: "",
                        bodyBuilder: (context) => PointListWidget()),
                    new ListItem(
                        title: "Vektoren",
                        subtitle: "",
                        bodyBuilder: (context) => VectorListWidget()),
                    new ListItem(
                        title: "Ebenen",
                        subtitle: "",
                        bodyBuilder: (context) => PlaneListWidget())
                  ],
                ),
              ),
            ),
          ),

          spaceLine(60.0),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddPointWidget()));
        },
        tooltip: 'neues Elemet',
        child: Icon(Icons.add),
      ),
    );
  }
}

Text spaceLine(double size) {
  return Text(
    " ",
    style: TextStyle(
      fontSize: size,
    ),
  );
}
