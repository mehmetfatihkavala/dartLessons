void main(List<String> args) {
  int yas = 34;
  double ortalama = 2.6;
  num yil = 2001;
  num tahmin = 5.7;

  print(yas);
  print(yil);
  print(ortalama);
  print(tahmin);

  String ad = "Serhat";
  print(ad);
  print(ad + "in yaşi 7");

  bool erkekMi = true;
  bool kizMi = false;

  print(erkekMi);
  print(kizMi);

  var okul = "Pau";
  var okulNumarasi = 121116;
  var okuluBittiMi = false;

  print(okul);
  print(okulNumarasi);
  print(okuluBittiMi);
  print("$ad + $okul");
  // $ işareti değişken belirtmek için kullanılır...
  print("okulum olan $okul'de kaç harf vardır:" + okul.length.toString());

  /* print("Karakter sayisi: $ad.length");

    Hata verdi çünkü küme parantezi ile gruplandırmak gerek. Aksi halde birden çok methodu 
    tanımıyor 
    */
  //Doğru Kullanım :
  print("Karakter Sayısı: ${ad.length}");
}
