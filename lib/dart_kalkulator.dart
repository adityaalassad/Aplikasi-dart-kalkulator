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

  String getOperationSymbol(String choice) {
    if (choice == '1') return "+";
    if (choice == '2') return "-";
    if (choice == '3') return "*";
    if (choice == '4') return "/";
    return "";
  }
}
