void main(List<String> args) {
  int sayi = 5;
  int sayi2 = 12;
  print(sayi);
  print(sayi2);

  Ogrenci ehme = Ogrenci();
  ehme.ogrAd = "ehmeee";
  ehme.aktifMi = true;
  ehme.ogrNo = 21;
  /* Ogrenci hesen = Ogrenci();
  Ogrenci ildeniz = Ogrenci();
  var biucan = Ogrenci();
  */
}

class Ogrenci {
  //İnstance veriables...
  String ogrAd = "";
  int? ogrNo = 0;
  bool? aktifMi;

  void dersCalis() {
    print("Ders çalışıyor...");
  }
}
