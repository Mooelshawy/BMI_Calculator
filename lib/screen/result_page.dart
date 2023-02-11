import 'package:bmi_calculator_flutter/extra/bmi_category.dart';
import 'package:bmi_calculator_flutter/extra/constant.dart';
import 'package:bmi_calculator_flutter/widget/create_new_container.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiCalculation,
      required this.bmiInterpolation,
      required this.bmiResult});

  final String bmiCalculation;
  final String  bmiResult;
  final String bmiInterpolation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kScaffoldBackGround,
          elevation: 2,
          title: Text(
            'Calculation Page',
            style: kTitleFontStyle,
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: CreateNewContainer(
                  containerColor: kScaffoldBackGround,
                  cardContentNextLevel: Text(
                    'Your Result',
                    style: kNumberTextStyle,
                  )),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: kCardColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '$bmiResult',
                      style: kResultPageText,
                    ),
                    Text(
                      '$bmiCalculation',
                      style: kNumberResultTextStyle,
                    ),
                    Text(
                      '$bmiInterpolation',
                      style: kResultPageText,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.only(top: 15),
                width: double.infinity,
                height: kBottomContainerHight,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15)),
                    color: kBottomContainerColor),
                child: const Center(
                    child: Text(
                  'Re-Caluculate',
                  style: kTitleFontStyle,
                )),
              ),
            )
          ],
        ));
  }
}
