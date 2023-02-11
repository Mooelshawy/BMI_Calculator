import 'dart:math';

import 'package:bmi_calculator_flutter/extra/bmi_category.dart';

class CalculationBrain{

CalculationBrain({ required this.height , required this.weight}) ;

   final int height ;
   final  int weight ;


late double  _bmi ;
  String calculateBMI(){
    _bmi = weight / pow((height / 100), 2) ;
    return _bmi.toStringAsFixed(1) ;
  }

String  getResult(){
  if(_bmi >= 25){
    return 'Very_Overweight_To_Obese' ;
  }else if(_bmi > 18.5){
     return 'Normal' ;
  }else{
     return 'Underweight' ;
  }
}
String getInterpolation(){
  if(_bmi >= 25){
    return 'You Have a higher than normal body .try to exercies more' ;
  }else if(_bmi > 18.5){
     return 'You have a Normal Body Weight . Good Job!' ;
  }else{
     return 'You Have Lower than Normal Body Weight . You can Eat bit More.' ;
  }
}



}