import 'dart:math' as math;

class Kalkulator {
  double tambah(double num1, double num2) {
    return num1 + num2;
  }

  double kurang(double num1, double num2) {
    return num1 - num2;
  }

  double kali(double num1, double num2) {
    return num1 * num2;
  }

  double bagi(double num1, double num2) {
    if (num2 != 0) {
      return num1 / num2;
    } else {
      throw Exception("Pembagian dengan nilai 0 tidak dapat dilakukan");
    }
  }

  double sinus(double angleInDegrees) {
    double angleInRadians = math.pi * angleInDegrees / 180;
    return math.sin(angleInRadians);
  }

  double cosinus(double angleInDegrees) {
    double angleInRadians = math.pi * angleInDegrees / 180;
    return math.cos(angleInRadians);
  }

  String getOperationSymbol(String choice) {
    if (choice == '1' || choice == '+') return "+";
    if (choice == '2' || choice == '-') return "-";
    if (choice == '3' || choice == '*') return "*";
    if (choice == '4' || choice == '/') return "/";
    if (choice.toLowerCase() == 'sin') return "sin";
    if (choice.toLowerCase() == 'cos') return "cos";
    return "";
  }
}
