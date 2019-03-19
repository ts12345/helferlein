import 'package:flutter/material.dart';
import 'package:helferlein/model/Vector.dart';

class VectorWidget extends StatelessWidget {
  final Vector vector;

  VectorWidget(this.vector);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: [
      Text(
        vector.name,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontSize: 55.0,
        ),
      ),
      Text(
        "(",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontSize: 55.0,
        ),
      ),
      Column(children: [
        Text(
          vector.x.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Roboto",
            fontSize: 18.0,
          ),
        ),
        Text(
          vector.y.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Roboto",
            fontSize: 18.0,
          ),
        ),
        Text(
          vector.z.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Roboto",
            fontSize: 18.0,
          ),
        )
      ]),
      Text(
        ")",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontSize: 55.0,
        ),
      ),
    ]));
  }
}
