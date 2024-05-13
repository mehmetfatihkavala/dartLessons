void main(List<String> args) {
  // Soru 1 çözümü...
  double sayi1 = 12.0;
  double sayi2 = 13.8;
  double sayi3 = 18.9;

  print("Sayıların ortalaması = ${(sayi1 + sayi2 + sayi3) / 3}");

  print("*************************************************");

  // Soru 2 çözümü...

  int kenar1 = 5;
  int kenar2 = 12;
  int kenar3 = 13;

  if (kenar1 == kenar2 && kenar1 == kenar3) {
    print("Bu bir eşgenar üçgendir...");
  } else if (kenar1 != kenar2 && kenar1 != kenar3 && kenar2 != kenar3) {
    print("Bu bir çeşitkenar üçgendir...");
  } else {
    print("Bu bir ikizkenar üçgendir...");
  }

  print("*************************************************");

// Soru 3 çözümü...

  double vizeNotu = 75;
  double finalNotu = 55;
  double ort;

  ort = ((vizeNotu * 40) / 100) + ((finalNotu * 60) / 100);
  if (ort >= 50) {
    print("Notunuz: $ort Tebrikler dersi geçtiniz...");
  }

  print("*************************************************");

// Soru 4 çözümü...

  String isim = "Mehmet Fatih KAVALA";

  for (int i = 1; i <= 5; i++) {
    print(isim + " $i");
  }
  print("*************************************************");

  int i = 1;
  while (i <= 5) {
    print(isim + " $i");
    i++;
  }

  print("*************************************************");

  int j = 1;
  do {
    print(isim + " $j");
    j++;
  } while (j <= 5);

  print("*************************************************");

// Soru 5 çözümü...

  for (int k = 1; k <= 100; k++) {
    if (k % 15 == 0) {
      print("$k'nın karesi = ${k * k}");
    }
  }

  print("*************************************************");

// Soru 6 çözümü...

  int fakt = 6;
  int sonuc = 1;
  for (int s = 1; s <= fakt; s++) {
    sonuc = s * sonuc;
    /*
    if (s == fakt) {
      print("$fakt faktöriyeli = $sonuc");
    }*/
  }
  print("$fakt faktöriyeli = $sonuc");
}
