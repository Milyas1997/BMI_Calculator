import 'package:bmi_calculator/Calculator_Model/Calculate_BMI.dart';
import 'package:bmi_calculator/Screen_view/ResultPage.dart';
import 'package:flutter/material.dart';

import 'Custom_Widget/FirstRow.dart';
import 'Custom_Widget/LastRow.dart';
import 'Screen_view/Input_View.dart';

enum Gender { M, FM, NON }

final Color ActiveColor = Color.fromARGB(255, 49, 50, 70);
final Color inActiveColr = Color(0xff111328);

const txtcolr = TextStyle(
    fontSize: 15,
    color: Color.fromARGB(255, 169, 155, 155),
    fontWeight: FontWeight.bold);

void main() {
  runApp(
    MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const Input_page(),
  
  ));
}

