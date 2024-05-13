/*
=>super üst sınıfa erişmeyi sağlar...
=>Extends edilen sınıfın kurucu methodundan önce üst sınıfın kurucu methodu çalışır...
=>Kurucu methodda super anahtar kelimesi kullanılması üst sınıfta oluşturulan değişkenlerin kullanılmasına yarar...
*/
void main(List<String> args) {
  Asker a1 = Asker("Ali", 25);
  Er a2 = Er("Ahmet", 34);
  a1.selamla();
  a2.selamla();
  a2.memleketDegistir("Adana");
  print(a2.memleket);
}

class Asker {
  String isim = "";
  int yas = 0;
  String memleket = "";

  Asker(this.isim, this.yas) {
    print("Asker sınıfının kurucu methodu çalıştı...");
  }

  void selamla() {
    print("Asker selam gönderdi...");
  }
}

class Er extends Asker {
  Er(String ad, int yas) : super(ad, yas) {
    print("Er sınıfının kurucu methodu çalıştı...");
  }

  @override
  void selamla() {
    print("Er selam gönderiyor...");
  }

  void memleketDegistir(String yeniMemleket) {
    super.memleket = yeniMemleket;
  }
}
