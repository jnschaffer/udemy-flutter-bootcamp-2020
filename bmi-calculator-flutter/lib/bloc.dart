import 'dart:math';

class Bloc {
  double calculate(int height, int weight) {
    return weight / pow(height / 100, 2);
  }
}
