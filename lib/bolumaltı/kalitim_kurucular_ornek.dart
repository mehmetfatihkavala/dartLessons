void main(List<String> args) {
  Kisi bir = Kisi("Ali", 21);
  Calisan iki = Calisan("Ahmet", 26, 3000);
  bir.kendiniTanit();
  iki.kendiniTanit();
}

class Kisi {
  String isim;
  int yas;

  Kisi(this.isim, this.yas);

  void kendiniTanit() {
    print("Benim adım $isim ve yaşım $yas");
  }
}

class Calisan extends Kisi {
  int maas;
  Calisan(String name, int age, this.maas) : super(name, age);
  @override
  void kendiniTanit() {
    super.kendiniTanit();
    print("Maaşım $maas");
  }
}
