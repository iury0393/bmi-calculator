import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height, weight;

  String calculateIMC() {
    double imc = weight / pow(height / 100, 2);
    return imc.toStringAsFixed(1);
  }

  String getResult() {
    if (imc >= 25) {
      return 'Acima do peso';
    } else if (imc > 18.5) {
      return 'Normal';
    } else {
      return 'Abaixo do peso';
    }
  }
}
