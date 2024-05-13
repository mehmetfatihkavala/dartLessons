void main(List<String> args) {
  Hayvan h1 = Hayvan();
  h1.hareket();
  var h5 = Hayvan();
  h5.ureme();
  Memeli h2 = Memeli();
  h2.hareket();
  Insan h3 = Insan();
  h3.dusunme();
  h3.ureme();
  Kus h4 = Kus();
  h4.hareket();
  Hayvan h6 = Insan(); //Upcasting yukarı çevrim...
  h6.hareket();
  //Kus h7 = Hayvan();//Böyle bir kullanım hatalıdır...

  List<Hayvan> hayvanlar = [];
  //Listede değişken olarak hayvan(parent(üst) sınıf) alındığı için ondan kalıtılmış sınıflardan da nesneler aynı listeye eklenebilir...
  hayvanlar.add(h1);
  hayvanlar.add(h4);
  print("***************************************************");

  test(h1);
  test(h4);
  test(h3);
}

void test(Hayvan canli) {
  canli.hareket(); //polimorfizm(Çok biçimlilik...)
  //Gelen değişkene göre değişiklik gösterir...
  //Alınan sınıftan türeyen sınıflarda da kullanılabilir...
}

class Hayvan {
  String isim = "Hayvan";
  bool canliMi = true;

  void hareket() {
    print("Hayvan hareket ediyor...");
  }

  void ureme() {
    print("Hayvan çoğaldı...");
  }
}

class Memeli extends Hayvan {
  bool yavruBakimiVarMi = true;
  String solunum = "Oksijenli";

  @override
  void hareket() {
    print("Memeli hayvan hareket ediyor...");
  }

  @override
  void ureme() {
    print("Memeli doğum yaptı...");
  }
}

class Insan extends Memeli {
  int ayakSayisi = 2;

  @override
  void hareket() {
    print("İnsan yürüyor...");
  }

  @override
  void ureme() {
    print("İnsan doğum yaptı...");
  }

  void dusunme() {
    print("İnsan düşünüyor...");
  }
}

class Kus extends Hayvan {
  bool ucabiliyorMu = true;
  int ayakSayisi = 2;

  @override
  void hareket() {
    print("Kuş uçuyor...");
  }

  @override
  void ureme() {
    print("Kuş yumurtladı...");
  }
}
