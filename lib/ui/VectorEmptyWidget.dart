import 'package:flutter/material.dart';

class VectorEmptyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "(x1|x2|x3)^T",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: "Roboto",
        fontSize: 24.0,
        color: Colors.grey,
      ),
    );
  }
}
