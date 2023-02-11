import 'dart:ui';

import 'package:bmi_calculator_flutter/screen/lighting.dart';
import 'package:bmi_calculator_flutter/screen/result_page.dart';
import 'package:flutter/material.dart';

import 'screen/input_page.dart';

void main() {
  runApp(const BMI_Calculator());
}

class BMI_Calculator extends StatelessWidget {
  const BMI_Calculator({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF12153B),
          scaffoldBackgroundColor: Color(0xFF12153B),
          textTheme: TextTheme(
              bodyMedium: TextStyle(color: Colors.red, fontSize: 20))),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',

      //route > create a map for direction between screen 
      routes: {
        '/' : (context)=> InputPage() ,
        '/first_page' : (context) => MyApp(),
        
      },
    );
  }
}
