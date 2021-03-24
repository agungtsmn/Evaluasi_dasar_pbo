// Amanda Agung Permata
// 6304191217
// Pengembangan Aplikasi Mobile Multiplatform

// ------------------------------------------
// Imput Data Mahasiswa

import 'dart:io';
import 'package:evaluasi_dasar_pbo/mahasiswa.dart';

void main(List<String> args) {
  Mahasiswa mahasiswa;
  var list_mahasiswa = [];
  String yn;
  var ulang = true;

  print("Inputkan Data Mahasiswa");
  print("");
  mahasiswa = Mahasiswa();

  while (ulang) {
    print("NIM : ");
    mahasiswa.nim = stdin.readLineSync();
    print("Nama : ");
    mahasiswa.nama = stdin.readLineSync();
    print("Nilai : ");
    mahasiswa.nilai_angka = int.tryParse(stdin.readLineSync());

    list_mahasiswa.add(mahasiswa.toMap());

    print("Apakan ingin menginput data mahasiswa lgi ? (Y/N)");
    print("");
    yn = stdin.readLineSync();
    (yn == "Y") ? ulang = true : ulang = false;
  }

  print("============================================================");
  print("NIM\t\t NAMA\t\t NILAI ANGKA\t NILAI HURUF");
  print("============================================================");

  for (var mhs in list_mahasiswa) {
    print("${mhs['nim']}\t ${mhs['nama']}\t\t ${mhs['nilai_angka']}\t\t ${mhs['nilai_huruf']}");
  }

  print('============================================================');
}