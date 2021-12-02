import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'input_file.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        // primaryColor: Color(0xFF090C22),
        scaffoldBackgroundColor: Color(0xFF153d4b),
      ),
      home: InputPage(),
    );
  }
}


