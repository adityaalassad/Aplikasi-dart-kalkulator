import 'package:dart_kalkulator/dart_kalkulator.dart';
import 'dart:io';

void main() {
  Kalkulator kalkulator = Kalkulator();

  while (true) {
    print("Aplikasi Kalkulator");
    print("Pilih operasi:");
    print("1. Penjumlahan (+)");
    print("2. Pengurangan (-)");
    print("3. Perkalian (*)");
    print("4. Pembagian (/)");
    print("5. Keluar");

    String? choice;
    try {
      stdout.write("Masukkan Pilihan Anda: ");
      choice = stdin.readLineSync()!;
      if (choice != '5' &&
          (choice != '1' &&
              choice != '2' &&
              choice != '3' &&
              choice != '4' &&
              choice != '+' &&
              choice != '-' &&
              choice != '*' &&
              choice != '/')) {
        throw FormatException("Pilihan tidak valid.");
      }
    } catch (e) {
      print("Masukkan pilihan dengan benar (1-5 atau +, -, *, /).");
      continue;
    }
    if (choice == '5') {
      print("Terima kasih, sampai jumpa!");
      break;
    }

    double num1 = 0;
    double num2 = 0;

    try {
      stdout.write("Masukkan bilangan pertama: ");
      num1 = double.parse(stdin.readLineSync() ?? "0");

      stdout.write("Masukkan bilangan kedua: ");
      num2 = double.parse(stdin.readLineSync() ?? "0");
    } catch (e) {
      print(
          "Input tidak boleh huruf atau karakter. Harap masukkan angka yang benar.");
      continue;
    }

    double result = 0;

    if (choice == '1' || choice == '+') {
      result = kalkulator.tambah(num1, num2);
    } else if (choice == '2' || choice == '-') {
      result = kalkulator.kurang(num1, num2);
    } else if (choice == '3' || choice == '*') {
      result = kalkulator.kali(num1, num2);
    } else if (choice == '4' || choice == '/') {
      try {
        result = kalkulator.bagi(num1, num2);
      } catch (e) {
        print(e.toString());
        continue;
      }
    }

    print("Hasil: $num1 $choice $num2 = $result");
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
