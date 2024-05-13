import 'dart:io';

void main(List<String> args) {
  print("Adınızı giriniz...");
  String? isim = stdin.readLineSync();

  print("Girilen isim: $isim");

  print("*****************************************");

  print("Yaşınızı giriniz...");
  int? yas = int.parse(stdin.readLineSync()!);
  print("Yaşınız: $yas");
}
