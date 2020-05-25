import 'dart:math';

class CalculatorBrain{

  CalculatorBrain({this.height,this.weight});

  final int height;
  final int weight;

  double bmi;

  String calculateResult(){
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(bmi >= 25){
      return 'Overweight';
    }
    else if(bmi > 18.5){
      return 'Normal';
    }
    else {
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if(bmi >= 25){
      return 'You have a higher than normal body weight.\n Try to exercise more!';
    }else if(bmi > 18.5){
      return 'You have a normal body weight. \nGood Job!';
    }else{
      return 'You have a lower than normal body weight. \nYou can try eating a bit more.';
    }
  }

}