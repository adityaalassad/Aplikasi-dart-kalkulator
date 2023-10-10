import 'package:dart_kalkulator/dart-kalkulator.dart';
import 'dart:io';
import 'dart:math' as math;

void main() {
  while (true) {
    print("Aplikasi Kalkulator");
    print("Pilih operasi:");
    print("1. Penjumlahan (+)");
    print("2. Pengurangan (-)");
    print("3. Perkalian (*)");
    print("4. Pembagian (/)");
    print("5. Sin (sinus)");
    print("6. Cos (cosinus)");
    print("7. Keluar");

    String? choice;
    try {
      stdout.write("Masukkan Pilihan Anda: ");
      choice = stdin.readLineSync()!;
      if (choice != '7' &&
          (choice != '1' &&
              choice != '2' &&
              choice != '3' &&
              choice != '4' &&
              choice != '5' &&
              choice != '6' &&
              choice != '+' &&
              choice != '-' &&
              choice != '*' &&
              choice != '/' &&
              choice.toLowerCase() != 'sin' &&
              choice.toLowerCase() != 'cos')) {
        throw FormatException("Pilihan tidak valid.");
      }
    } catch (e) {
      print("Masukkan pilihan dengan benar (1-7, +, -, *, /, sin, cos).");
      continue;
    }
    if (choice == '7') {
      print("Terima kasih, sampai jumpa!");
      break;
    }

    double num1 = 0;
    double num2 = 0;

    try {
      stdout.write("Masukkan bilangan pertama: ");
      num1 = double.parse(stdin.readLineSync() ?? "0");

      if (choice != '5' && choice != '6') {
        stdout.write("Masukkan bilangan kedua: ");
        num2 = double.parse(stdin.readLineSync() ?? "0");
      }
    } catch (e) {
      print(
          "Input tidak boleh huruf atau karakter. Harap masukkan angka yang benar.");
      continue;
    }

    double result = 0;

    if (choice == '1' || choice == '+') {
      result = num1 + num2;
    } else if (choice == '2' || choice == '-') {
      result = num1 - num2;
    } else if (choice == '3' || choice == '*') {
      result = num1 * num2;
    } else if (choice == '4' || choice == '/') {
      try {
        if (num2 != 0) {
          result = num1 / num2;
        } else {
          throw Exception("Pembagian dengan nilai 0 tidak dapat dilakukan");
        }
      } catch (e) {
        print(e.toString());
        continue;
      }
    } else if (choice.toLowerCase() == 'sin') {
      result = math.sin(num1);
    } else if (choice.toLowerCase() == 'cos') {
      result = math.cos(num1);
    }

    print("Hasil: $result");
    stdout.write("Apakah Anda ingin melakukan perhitungan lagi? (Y/T): ");
    String? again = stdin.readLineSync()?.toUpperCase();

    if (again != 'Y' && again != 'T') {
      print("Pilihan tidak valid. Keluar dari aplikasi.");
      break;
    } else if (again == 'T') {
      print("Terima kasih, sampai jumpa!");
      break;
    }
  }
}
