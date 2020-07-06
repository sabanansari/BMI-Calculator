import 'dart:math';

class CalcualtorBrain {
  final int height;
  final int weight;
  double _bmi;

  CalcualtorBrain({this.height, this.weight});

  String calcualateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Do Exercise to have Normal weight';
    } else if (_bmi > 18.5) {
      return 'Good Job! You are fit';
    } else {
      return 'Eat More, You need more calories';
    }
  }
}
