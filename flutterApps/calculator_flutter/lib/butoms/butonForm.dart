import 'package:calculator_flutter/screen/wiewCalculator.dart';
import 'package:flutter/material.dart';

class ButtomForm extends StatelessWidget {
  final Color bgColor;
  final bool big;
  final String text;

  final Function onPressed;

  //const ButtomForm({Key? key}) : super(key: key);

  const ButtomForm({
    Key? key,
    bgColor,
    this.big = false,
    required this.text,
    required this.onPressed,
  })  : this.bgColor = bgColor ?? Colors.blue,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    // Button
    final buttonStyle = TextButton.styleFrom(
      backgroundColor: this.bgColor,
      primary: Colors.white,
      shape: StadiumBorder(),
    );
    return Container(
      padding: EdgeInsets.only(bottom: 10.0),
      margin: EdgeInsets.only(bottom: 10, right: 5, left: 5),
      child: TextButton(
        style: buttonStyle,
        child: Container(
          width: this.big ? 150 : 65,
          height: 65,
          child: Center(
              child: Text(
            this.text,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
          )),
        ),
        onPressed: () => this.onPressed(),
      ),
    );
  }
}
