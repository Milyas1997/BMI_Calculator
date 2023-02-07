import 'dart:math';

class CalculateBMi {
  CalculateBMi({
    required this.height,
    required this.weight,
  });
  final int height;
  final int weight;
  double _bmi = 0.0;

  String getBmiValue() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    _bmi = double.parse(getBmiValue());
    if (_bmi == 25 || _bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18.5 && _bmi < 25) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String ResultCaution() {
    _bmi = double.parse(getBmiValue());
    if (_bmi == 25 || _bmi > 25) {
      return 'you have higher then normal body weight. try to excercise more';
    } else if (_bmi > 18.5 && _bmi < 25) {
      return 'you have normal body weight. Good job!';
    } else {
      return 'your BMI result is quite low, you should eat more!';
    }
  }
}
