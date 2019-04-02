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
                        title: "Title 1",
                        subtitle: "Subtitle 1",
                        bodyBuilder: (context) => new Text("Body 1")),
                    new ListItem(
                        title: "Title 2",
                        subtitle: "Subtitle 2",
                        bodyBuilder: (context) => new Text("Body 1"),
                        isExpandedInitially: true)
                  ],
                ),
              ),
            ),
          ),
          spaceLine(20.0),
          PointListWidget(),
          spaceLine(20.0),
          VectorListWidget(),
          spaceLine(20.0),
          PlaneListWidget(),
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
