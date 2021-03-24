// Amanda Agung Permata
// 6304191217
// Pengembangan Aplikasi Mobile Multiplatform

// ------------------------------------------
// Class Mahasiswa

import 'package:evaluasi_dasar_pbo/manusia.dart';

class Mahasiswa extends Manusia {
  String _nim, _nilai_huruf;
  int _nilai_angka;

  set nilai_angka(int nilai_angka) {
    _nilai_angka = nilai_angka;
  }
  set nim(String nim) {
    _nim = nim;
  }

  String nilai(nilai) {
    if (nilai >= 85 && nilai <= 100) {
      _nilai_huruf = "A";
    } else if (nilai >= 75) {
      _nilai_huruf = "B+";
    } else if (nilai >= 65) {
      _nilai_huruf = "B";
    } else if (nilai >= 60) {
      _nilai_huruf = "C+";
    } else if (nilai >= 55) {
      _nilai_huruf = "C";
    } else if (nilai >= 40) {
      _nilai_huruf = "D";
    } else if (nilai >= 0) {
      _nilai_huruf = "E";
    }
    return _nilai_huruf;
  }

  Map<String, dynamic> toMap() {
    return {
      "nim": _nim,
      "nama": nama,
      "nilai_angka": _nilai_angka,
      "nilai_huruf": nilai(_nilai_angka),
    };
  }
}