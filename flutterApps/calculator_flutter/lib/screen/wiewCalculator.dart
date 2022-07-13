import 'package:calculator_flutter/butoms/butonForm.dart';
import 'package:calculator_flutter/main.dart';
import 'package:flutter/material.dart';

// Global variables for imp or out data
String imputT = "";
final impNumb = TextEditingController();
final outResult = TextEditingController();

class ViewCalculator extends StatefulWidget {
  ViewCalculator({Key? key}) : super(key: key);

  @override
  State<ViewCalculator> createState() => _ViewCalculatorState();
}

class _ViewCalculatorState extends State<ViewCalculator> {
  @override
  void initState() {
    super.initState();
    impNumb.addListener(() {});
    outResult.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Center(
          child: Text("My Calculator"),
        ),
      ),
      body: Column(
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: new TextField(
              decoration: new InputDecoration.collapsed(
                hintText: "0",
                hintStyle: TextStyle(
                  fontSize: 40,
                  //fontFamily:
                ),
              ),
              style: TextStyle(
                fontSize: 40,
                //fontFamily:
              ),
              textAlign: TextAlign.right,
              controller: impNumb,
              onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
            ),
          ),
          new Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: new TextField(
              decoration: new InputDecoration.collapsed(
                hintText: "Result",
                fillColor: Colors.deepPurpleAccent,
              ),
              textInputAction: TextInputAction.none,
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: 42,
              ),
              textAlign: TextAlign.right,
              controller: outResult,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //btnAc('AC', const Color(0xFFF5F7F9)),
              //btnBorrar(),
              boton(
                '%',
                const Color(0xFFF5F7F9),
              ),
              //ButtomForm('/',const Color(0xFFF5F7F9),),

              /*ButtomForm(
                  text: "/",
                  bgColor: Color(0xffF0A23B),
                  onPressed: () => impNumb)*/
            ],
          ),
        ],
      ),
    );
  }

  Widget boton(btntxt, Color btnColor) {
    return Container(
      padding: EdgeInsets.only(bottom: 10.0),
      child: FlatButton(
        child: Text(
          btntxt,
          style: TextStyle(
              fontSize: 28.0, color: Colors.black, fontFamily: 'RobotoMono'),
        ),
        onPressed: () => setState(
          () => impNumb.text = impNumb.text + btntxt,
        ),
        color: btnColor,
        padding: EdgeInsets.all(18.0),
        splashColor: Colors.black,
        shape: CircleBorder(),
      ),
    );
  }
}
