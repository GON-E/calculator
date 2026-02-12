import 'package:calculator/main.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String? previousNumber;
  String? operator;
  bool shouldRestDisp = false;
  String display = "0";

   onNumberPress(label) {
    setState(() {
      if(display == "0") {
        display = label;
      } else {
        display = display + label;
      }
    });
  }

  deleteAll(label){
     setState(() {
      display = "0";
     });
  }
  Widget buildButton(String label) {
    return ElevatedButton(
        onPressed: () => onNumberPress(label),
        child: Text(
          label,
          style: TextStyle(fontSize: 22,
            backgroundColor: label == "=" ? Colors.orange : null,
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    const appTitle = "Calculator";
    return Scaffold(
      appBar: AppBar(
        title: Text(appTitle),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Display Area
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(24),

              child: Text(
                display,
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
          ), // Numbers and Inputs
          Container(
            height: 520,
            padding: const EdgeInsets.all(8),
            child: GridView.count(
              crossAxisCount: 4, // 4 buttons per row
              mainAxisSpacing: 8, // vertical gap
              crossAxisSpacing: 8, // horizontal gap
              children: [
                /*
                * %  /  C  DEL
                * 7  8  9  x
                * 4  5  6  -
                * 1  2  3  +
                *+/- 0  .  =
                * */
                buildButton("%"),
                buildButton("/"),
                buildButton("C"),
                buildButton("⌫"),
                buildButton("7"),
                buildButton("8"),
                buildButton("9"),
                buildButton("X"),
                buildButton("4"),
                buildButton("5"),
                buildButton("6"),
                buildButton("-"),
                buildButton("1"),
                buildButton("2"),
                buildButton("3"),
                buildButton("+"),
                buildButton("+/-"),
                buildButton("0"),
                buildButton("."),
                buildButton("="),

              ],
            ),
          )
        ],
      ),
    );
  }
}

