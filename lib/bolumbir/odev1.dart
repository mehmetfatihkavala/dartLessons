void main(List<String> args) {
  String ad = "Mehmet Fatih";
  String soyad = "KAVALA";
  int yas = 22;

  print(
      "Benim adım $ad $soyad yaşım $yas ve ismimdeki karakter sayısı: ${ad.length + soyad.length}");
  print("***********************************************************");

  int kenar1 = 5;
  int kenar2 = 12;
  int kenar3 = 13;

  print(
      "Birinci kenarı $kenar1 , ikinci kenarı $kenar2 , üçüncü kenarı $kenar3 olan üçgenin çevresi: ${kenar1 + kenar2 + kenar3}");
}
