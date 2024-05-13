void main(List<String> args) {
  Ogrenci fatih = Ogrenci(21, "Fatih");
  print(fatih.id);
  Ogrenci mehmet = Ogrenci.factoryKurucusu(-5, "Mehmet");
  print(mehmet.id);
  //id olarak sıfırdan küçük bir değer(-5) verildiği için id 5 olarak değişecektir...
  print(mehmet.isim);
}

class Ogrenci {
  int id = 0;
  String isim = "";
  /*
  KURUCULAR RETURN DEĞER ALAMAZLAR...
  */
  Ogrenci(this.id, this.isim);
  /*
  CONSTRUCTORLARDA return kullanmak için factory kullanılır.
  */
  factory Ogrenci.factoryKurucusu(int id, String isim) {
    if (id < 0) {
      return Ogrenci(5, isim);
    } else {
      return Ogrenci(id, isim);
    }
  }
}
