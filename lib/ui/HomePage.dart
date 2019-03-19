import 'package:flutter/material.dart';


import 'package:helferlein/ui/AddPointWidget.dart';
import 'package:helferlein/ui/PointListWidget.dart';


class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Helferlein"),
      ),

      body: ListView(
          children: <Widget>[
            PointListWidget(),
          ],
        ),


      floatingActionButton: FloatingActionButton(
        onPressed: () {

          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddPointWidget()
              )
          );

        },

        tooltip: 'neues Elemet',

        child: Icon(Icons.add),
      ),
    );
  }


}