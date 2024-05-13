import 'odev_cemberdaire_sinifi.dart';
import 'odev_oğrenci.dart';
import 'dart:math';

void main(List<String> args) {
  CemberDaire c1 = CemberDaire();
  c1.yariCapAta = 5;
  print(c1.alanSoyle);
  print(c1.cevreSoyle);

  //Ogrenci ogrenci = Ogrenci(id: 1, notDegeri: 5);
  List<Ogrenci> tumOgrenciler = List.filled(100, Ogrenci());

  ogrenciOlustur(tumOgrenciler);
  /*print(tumOgrenciler[5].notDegeri);
  print(tumOgrenciler[5].id);*/
  for (Ogrenci oAnki in tumOgrenciler) {
    print(oAnki);
  }
}

void ogrenciOlustur(List<Ogrenci> liste) {
  for (int i = 0; i < liste.length; i++) {
    liste[i] =
        Ogrenci(id: Random().nextInt(1000), notDegeri: Random().nextInt(100));
  }
}
