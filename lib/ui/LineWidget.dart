import 'package:flutter/material.dart';
import 'package:helferlein/model/Line.dart';

class LineWidget extends StatelessWidget {
  final Line line;

  LineWidget(this.line);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: [

          getVectorText(30.0,line.name),
          getVectorText(30.0,": x="),

          getVectorText(55.0,"("),

          Column(children: [
            getVectorText(18.0,value(line.aufpunkt.x)),
            getVectorText(18.0,value(line.aufpunkt.y)),
            getVectorText(18.0,value(line.aufpunkt.z)),
          ]),

          getVectorText(55.0,")"),

          getVectorText(30.0, "+ \u03BB"),

          getVectorText(55.0,"("),

          Column(children: [
            getVectorText(18.0,value(line.richtung.x)),
            getVectorText(18.0,value(line.richtung.y)),
            getVectorText(18.0,value(line.richtung.z)),
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

String value (double value){
  int a = value.toInt();
  if(value/a.toDouble() == 1) return a.toString();
  else return value.toString();
}