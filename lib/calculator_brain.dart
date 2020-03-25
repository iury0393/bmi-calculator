import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height, weight;
  double _imc;

  String calculateIMC() {
    _imc = weight / pow(height / 100, 2);
    return _imc.toStringAsFixed(1);
  }

  String getResult() {
    if (_imc >= 25) {
      return 'Acima do peso';
    } else if (_imc > 18.5) {
      return 'Normal';
    } else {
      return 'Abaixo do peso';
    }
  }

  String getInterpretation() {
    if (_imc >= 25) {
      return 'Você tem um peso corporal acima do normal. Tente se exercitar mais.';
    } else if (_imc >= 18.5) {
      return 'Você tem um peso corporal normal. Bom trabalho!';
    } else {
      return 'Você tem um peso corporal abaixo do normal. Você pode comer um pouco mais.';
    }
  }
}
