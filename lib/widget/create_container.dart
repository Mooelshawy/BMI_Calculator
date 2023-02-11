import 'package:bmi_calculator_flutter/screen/input_page.dart';
import 'package:flutter/material.dart';

import 'card_content.dart';



class CreateConatiner extends StatelessWidget {
  CreateConatiner(
      {this.containerColor, required this.genderIcon, required this.title});

  Color? containerColor;
  Icon genderIcon;
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: CardContent(genderIcon: genderIcon, title: title),
        ),
    );
  }
}
