import 'package:flutter/material.dart';
import 'package:helferlein/model/Plane.dart';

class PlaneWidget extends StatelessWidget {
  final Plane plane;

  PlaneWidget(this.plane);

  @override
  Widget build(BuildContext context) {
    return Text(
      plane.getString(),
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: "Roboto",
        fontSize: 24.0,
        color: Colors.grey,
      ),
    );
  }
}
