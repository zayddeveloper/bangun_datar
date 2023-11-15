import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi = 0;
  final hasil = "".obs;
  final type = 0.obs;

  void hitungLuas(){
    type.value = 0;
    int hitung = sisi * sisi;
    hasil.value = "Hasil perhitungan luas dari $sisi x $sisi = $hitung";
  }
  void hitungKeliling(){
    type.value = 1;
    int hitung = sisi * 4;
    hasil.value = "Hasil perhitungan keliling dari $sisi x 4 = $hitung";
  }
}