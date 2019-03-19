import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:helferlein/ui/HomePage.dart';
import 'package:helferlein/model/VectorSpaceModel.dart';

void main() {
  final VectorSpaceModel vsm = VectorSpaceModel();

  runApp(
    ScopedModel<VectorSpaceModel>(
      model: vsm,
      child: MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Helferlein",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}


