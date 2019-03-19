import 'package:flutter/material.dart';


import 'package:helferlein/model/Point.dart';

class PointWidget extends StatelessWidget {
  final Point point;

  PointWidget(this.point);

  @override
  Widget build(BuildContext context) {
    return Text(
        point.getString(),
        textAlign: TextAlign.center,
        style: new TextStyle(fontFamily: "Roboto", fontSize: 24.0, ),
        );
  }
}