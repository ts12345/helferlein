import 'package:flutter/material.dart';

class VectorEmptyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: [
          getVectorText(55.0,"("),

          Column(children: [
            getVectorText(18.0,"x1"),
            getVectorText(18.0,"x2"),
            getVectorText(18.0,"x3"),
          ]),

          getVectorText(55.0,")"),
        ])
    );
  }
}

Text getVectorText (double size, String text){
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontFamily: "Roboto",
      fontSize: size,
      color: Colors.grey,
    ),
  );
}
