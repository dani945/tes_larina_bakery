import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TugasSatuController extends GetxController {
  // tugas 1 point a
  TextEditingController controllerFibonaci = TextEditingController();
  List<int> hasilFibonaci = [];

  // tugas 1 point b
  List<int> myArray = [42, 7, 19, 3, 56, 23, 15]; // Array awal
  // tugas 1 point c
  TextEditingController controllerPalindrom = TextEditingController();
  String hasilPalindrom = "";

  // ==================== TUGAS 1 ==================== //
  // Method untuk menghitung deret Fibonacci
  void generateFibonacci(int count) {
    List<int> fibonacci = [];
    if (count <= 0) {
      hasilFibonaci = fibonacci;
    }

    for (int i = 0; i < count; i++) {
      if (i == 0 || i == 1) {
        fibonacci.add(1);
      } else {
        fibonacci.add(fibonacci[i - 1] + fibonacci[i - 2]);
      }
    }
    hasilFibonaci = fibonacci;
    update();
  }

  void clearFibonaci() {
    hasilFibonaci.clear();
    update();
  }

  // Method untuk mengurutkan array
  List<int> sortArray() {
    List<int> sortedArray = List.from(myArray); // Salin array agar tidak mengubah data asli
    sortedArray.sort(); // Mengurutkan array
    return sortedArray;
  }

  // Method untuk mengecek apakah sebuah kalimat adalah palindrom
  void isPalindrome(String sentence) {
    // Hapus spasi, tanda baca, dan ubah menjadi huruf kecil
    String processed = sentence.replaceAll(RegExp(r'[^A-Za-z0-9]'), '').toLowerCase();
    // Bandingkan string asli dengan versi terbalik
    if (processed == processed.split('').reversed.join('')) {
      hasilPalindrom = 'Ya, ini adalah Palindrom';
      update();
    } else {
      hasilPalindrom = 'Tidak, ini bukan Palindrom';
      update();
    }
  }

  void clearPalindrom() {
    hasilPalindrom = "";
    update();
  }
}
