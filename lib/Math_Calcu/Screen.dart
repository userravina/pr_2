import 'package:flutter/material.dart';
class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);
  @override
  State<Calculator> createState() => _CalculatorState();
}
class _CalculatorState extends State<Calculator> {
  String buttonText="";
  Widget buttonNumbers(String buttonText, Color buttonColor, Color textColor) {
    return InkWell(
      onTap: () {
        calculate(buttonText);
      },
      child: Ink(
        decoration: BoxDecoration(
          color: buttonColor,),
        child: Container(
          height: 70,
          width: 70,
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                fontSize: 25,
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
  Color bgColor = Color(0xff2E2D32);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      child: Text(history,
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 42,color: Color(0xff8D8D8D)),),
                    ),
                    Container(
                      child: Text(text,
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 80,color: Colors.white),),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 1.5,
                          width: 450,
                          color: Color(0xff8D8D8D),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {setState(() {
                    finalAns = "";
                    text = "";
                    history = "";
                    firstNumber = 0;
                    secondNumber = 0;
                  });
                  },
                  borderRadius: BorderRadius.circular(35),
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Color(0xffFF5A66),
                    ),
                    child: Container(
                      height: 70,
                      width: 180,
                      child: Center(
                        child: Text("AC",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                buttonNumbers("%", bgColor, Color(0xff929292)),
                buttonNumbers("/", bgColor, Color(0xffFF5A66)),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buttonNumbers("7", bgColor, Colors.white),
                buttonNumbers("8", bgColor, Colors.white),
                buttonNumbers("9", bgColor, Colors.white),
                buttonNumbers("*", bgColor, Color(0xffFF5A66)),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buttonNumbers("4", bgColor, Colors.white),
                buttonNumbers("5", bgColor, Colors.white),
                buttonNumbers("6", bgColor, Colors.white),
                buttonNumbers("-", bgColor, Color(0xffFF5A66)),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buttonNumbers("1", bgColor, Colors.white),
                buttonNumbers("2", bgColor, Colors.white),
                buttonNumbers("3", bgColor, Colors.white),
                buttonNumbers("+", bgColor, Color(0xffFF5A66)),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buttonNumbers("00", bgColor, Colors.white),
                buttonNumbers("0", bgColor, Colors.white),
                buttonNumbers(".", bgColor, Colors.white),
                InkWell(
                  onTap: () {
                    buttonText="=";
                    calculate(buttonText);
                  },
                  borderRadius: BorderRadius.circular(35),
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Color(0xffFF5A66),
                    ),
                    child: Container(
                      height: 70,
                      width: 70,
                      child: Center(
                        child: Text("=",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
// Logic
  int firstNumber = 0;
  int secondNumber = 0;
  String finalAns = "";
  String text = "";
  String operation = "";
  String history = "";
  void calculate(String buttonText) {
    if (buttonText == "+" ||
        buttonText == "-" ||
        buttonText == "*" ||
        buttonText == "/") {
      firstNumber = int.parse(text);
      finalAns = "";
      operation = buttonText;
    } else if (buttonText == "=") {
      secondNumber = int.parse(text);
      if (operation == "+") {
        finalAns = (firstNumber + secondNumber).toString();
        history = firstNumber.toString() + operation.toString() + secondNumber.toString();
      }
      if (operation == "-") {
        finalAns = (firstNumber - secondNumber).toString();
        history = firstNumber.toString() + operation.toString() + secondNumber.toString();
      }
      if (operation == "*") {
        finalAns = (firstNumber * secondNumber).toString();
        history = firstNumber.toString() + operation.toString() + secondNumber.toString();
      }
      if (operation == "/") {
        finalAns = (firstNumber ~/ secondNumber).toString();
        history = firstNumber.toString() + operation.toString() + secondNumber.toString();
      }
    } else {
      finalAns = int.parse(text + buttonText).toString();
    }
    setState(() {
      text = finalAns;
    });
  }
}