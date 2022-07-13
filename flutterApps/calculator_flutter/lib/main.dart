import 'package:flutter/material.dart';
import 'package:calculator_flutter/screen/wiewCalculator.dart';

void main() => runApp(Calculator());

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My calculator",
      home: new ViewCalculator(),
    );
  }
}
