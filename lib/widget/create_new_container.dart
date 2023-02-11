
import 'package:bmi_calculator_flutter/widget/card_content.dart';
import 'package:flutter/material.dart';
class CreateNewContainer extends StatelessWidget {
  const CreateNewContainer({
    super.key,
    required this.containerColor,
    required this.cardContentNextLevel
   
  });

  final Color? containerColor;

  final Widget cardContentNextLevel ;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: cardContentNextLevel
    );
  }
}
