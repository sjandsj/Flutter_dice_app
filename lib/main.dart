import 'package:dice_app/gradient_container.dart';
import 'package:flutter/material.dart';

const List<Color> colors = [
  Colors.red,
  Colors.orange,
  Colors.yellow,
  Colors.green,
  Colors.blue,
  Colors.indigo,
  Colors.purple,
];
void main() {
  runApp(MaterialApp(home: Scaffold(body: GradientContainer(colors: colors))));
}
