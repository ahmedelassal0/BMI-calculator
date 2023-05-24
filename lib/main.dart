import 'package:bmi_calculator/ResultBmiCalculatorScreen.dart';
import 'package:flutter/material.dart';

import 'BmiCalculator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BmiCalculator(),
    debugShowCheckedModeBanner: false,);
  }
}
