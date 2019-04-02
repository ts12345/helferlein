import 'package:flutter/material.dart';

class PlaneEmptyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "P: x + y + z = 0",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: "Roboto",
        fontSize: 24.0,
        color: Colors.grey,
      ),
    );
  }
}
