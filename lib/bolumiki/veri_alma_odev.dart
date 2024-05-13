import 'dart:io';

void main(List<String> args) {
// Ödev 1...
  print("Vize notunuzu giriniz...");
  int? vize = int.parse(stdin.readLineSync()!);
  print("Final notunuzu giriniz...");
  int? sinavIki = int.parse(stdin.readLineSync()!);
  double ort = (vize + sinavIki) / 2;
  print("Ortalamanız: $ort");

  print("******************************");

// Ödev 2...
  print("Ürün fiyatınız giriniz...");
  int? fiyat = int.parse(stdin.readLineSync()!);
  double yeniFiyat = (fiyat * 18) / 100 + fiyat;
  print("Ürünün kdvli fiyatı: $yeniFiyat");
}
