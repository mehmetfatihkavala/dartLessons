void main(List<String> args) {
  for (int i = 0; i < 10; i++) {
    print("KAVALA  $i");
  }

  print("*********************************");

  List isimListesi = ["Mehmet", "Fatih", "KAVALA"];

  for (String isim in isimListesi) {
    print("$isim");
  }

  print("*******************************************");

  int sayac = 0;

  while (sayac < 3) {
    print("Sayaç değeri: $sayac");
    sayac++;
  }

  print("***********************************************");

  int sayac2 = 0;

  do {
    print("Sayaç değeri: $sayac2");
    sayac2++;
  } while (sayac2 < 5);
}
