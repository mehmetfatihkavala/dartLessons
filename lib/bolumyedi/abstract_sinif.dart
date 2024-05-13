/*
***Abstract soyut sınıf: Sınıflar arasında soyutlama yapmak için kullanılır...
***Abstract sınıflardan nesne üretilemez, abstract sınıflarda normal ve abstract methodlar olur...
***Abstrract methodlar alt sınıflarca override edilmek zorundadır...
***Bir sınıfta bir tane abstract method varsa o sınıf mutlaka abstract olarak tanınmalıdır...
*/
void main(List<String> args) {
  //Sekil s1 = Sekil();
  //Böyle bir şey yapılamaz çünkü abstract sınıflardan nesne oluşturulamaz...
  Sekil s2 = Kare(5);
  print(s2.alanHesapla());
  print(s2.cevreHesapla());
  s2.selamla();
  Kare s3 = Kare(7);
  print(s3.alanHesapla());
  print(s3.cevreHesapla());
  s3.selamla();
  var s4 = Kare(6);
  print(s4.alanHesapla());
  print(s4.cevreHesapla());
  s4.selamla();
  Dikdortgen s5 = Dikdortgen(9, 5);
  print(s5.alanHesapla());
  print(s5.cevreHesapla());
  s5.selamla();
}

abstract class Sekil {
  double alanHesapla();
  double cevreHesapla();
  //Gövdesiz fonksiyonlar...
  void selamla() {
    print("Ben bir şekil sınıfıyım...");
  }
}

class Kare extends Sekil {
  int kenar;

  Kare(this.kenar);
  //Abstract sınıftan extends edilen sınıf abstract methodların gövdesini doldurmak zorundadır...
  @override
  double alanHesapla() {
    return kenar * kenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return kenar * 4.toDouble();
  }

  @override
  void selamla() {
    print("Ben kare sınıfındanım...");
  }
}

class Dikdortgen extends Sekil {
  int birinciKenar;
  int ikinciKenar;

  Dikdortgen(this.birinciKenar, this.ikinciKenar);

  @override
  double alanHesapla() {
    return birinciKenar * ikinciKenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return (birinciKenar + ikinciKenar) * 2;
  }

  @override
  void selamla() {
    print("Ben dikdörtgen sınıfındanım...");
  }
}
