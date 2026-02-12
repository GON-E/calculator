import 'package:flutter/material.dart';
import 'pages/calculator_page.dart';

const Color backgroundColor = Color(0xFFF5F5F5);  // Light gray
const Color displayColor = Color(0xFFFFFFFF);     // White
const Color outlineColor = Color(0xFF000000);     // Black outline
const Color numberColor = Color(0xFFE0E0E0);      // Light gray button  s
const Color operatorColor = Color(0xFFFFB74D);    // Orange for + - * /


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatorPage(),
      theme: ThemeData(
        // Define the default brightness and color
        primaryColor: Color(0xFF1A1A1A),
        scaffoldBackgroundColor: backgroundColor,

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            // OUTLINE look
            side: const BorderSide(color: outlineColor, width: 2),
            shape: RoundedRectangleBorder(
              // change to 10 - 20 if too sharp
              borderRadius:  BorderRadius.circular(10),
            )
          )
        ),

        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: outlineColor,
          ),
        ),
      ),

    );
  }
}


