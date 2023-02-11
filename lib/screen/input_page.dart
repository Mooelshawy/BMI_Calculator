import 'package:bmi_calculator_flutter/extra/calculation_brain.dart';
import 'package:bmi_calculator_flutter/extra/gender.dart';
import 'package:bmi_calculator_flutter/screen/lighting.dart';
import 'package:bmi_calculator_flutter/screen/result_page.dart';
import 'package:flutter/material.dart';

import '../extra/constant.dart';
import '../widget/button_shape_content.dart';
import '../widget/create_container.dart';
import '../widget/create_new_container.dart';

Gender? genderSeleced;

int hightSelector = 10;

int weightSelector = 10;
int ageSelector = 10;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: kScaffoldBackGround,
            elevation: 2,
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/first_page');
                },
                icon: Icon(Icons.lightbulb),
              )
            ],
            title: Text('BMI CALCULATOR',
                textAlign: TextAlign.center, style: kTitleFontStyle)),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          genderSeleced = Gender.MALE;
                        });
                      },
                      child: CreateConatiner(
                        containerColor: genderSeleced == Gender.MALE
                            ? kClickedCardColor
                            : kCardColor,
                        genderIcon: Icon(Icons.male),
                        title: 'male',
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          genderSeleced = Gender.FeMALE;
                        });
                      },
                      child: CreateConatiner(
                        containerColor: genderSeleced == Gender.FeMALE
                            ? kClickedCardColor
                            : kCardColor,
                        genderIcon: Icon(Icons.female),
                        title: 'female',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CreateNewContainer(
              containerColor: kCardColor,
              cardContentNextLevel: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Hight', style: kTitleFontStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text('$hightSelector', style: kNumberTextStyle),
                        Text('cm', style: kTitleFontStyle),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.pink.shade700,
                          inactiveTrackColor: Colors.blueGrey.shade300,
                          thumbColor: Colors.pink.shade700,
                          overlayColor: Color(0x9fc51162),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0)),
                      child: Slider(
                          value: hightSelector.toDouble(),
                          min: 10.0,
                          max: 250.0,
                          autofocus: true,
                          label: '$hightSelector',

                          //slider return new value as callback value
                          //should put callback in setstate block
                          onChanged: (double newValue) {
                            setState(() {
                              hightSelector = newValue.round();
                            });
                          }),
                    )
                  ]),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CreateNewContainer(
                      containerColor: kCardColor,
                      cardContentNextLevel: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Weight', style: kTitleFontStyle),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text('$weightSelector', style: kNumberTextStyle),
                              Text('km', style: kTitleFontStyle),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                ),
                                child: RoundIconButton(
                                  buttonIcon: Icons.add,
                                  onPressed: () {
                                    setState(() {
                                      weightSelector++;
                                    });
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                ),
                                child: RoundIconButton(
                                  buttonIcon: Icons.minimize,
                                  onPressed: () {
                                    setState(() {
                                      weightSelector--;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: CreateNewContainer(
                      containerColor: kCardColor,
                      cardContentNextLevel: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Age', style: kTitleFontStyle),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text('$ageSelector', style: kNumberTextStyle),
                              Text('Y', style: kTitleFontStyle),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                ),
                                child: RoundIconButton(
                                  buttonIcon: Icons.add,
                                  onPressed: () {
                                    setState(() {
                                      ageSelector++;
                                    });
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                ),
                                child: RoundIconButton(
                                  buttonIcon: Icons.minimize,
                                  onPressed: () {
                                    setState(() {
                                      ageSelector--;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                CalculationBrain calculate = CalculationBrain(
                    height: hightSelector, weight: weightSelector);

                
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResultPage(
                      bmiCalculation: calculate.calculateBMI() ,
                      bmiResult: calculate.getResult(),
                      bmiInterpolation: calculate.getInterpolation(),
                    )));
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
                child: Center(
                    child: Text(
                  'Caluculate',
                  style: kTitleFontStyle,
                )),
              ),
            )
          ],
        ));
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.buttonIcon, required this.onPressed});
  IconData buttonIcon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        onPressed();
      },
      child: Center(
        child: Icon(buttonIcon,
            color: Colors.white, size: 40, opticalSize: 5.0, weight: 50),
      ),
      elevation: 10,
      fillColor: kClickedCardColor,
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
  }
}
