/*
***Dart dilinde interface kavramı yoktur ama sınıfları implements anahtar kelimesi ile interfacemiş
gibi kullanabiliriz...
***Interfaceler sayesinde ortak özelliği olan ancak kalıtımsal olarak alakası olmayan sınıfları bir
çatı altında toplayabiliriz...
***Interface olarak kullanılan sınıfların methodları bu sınıfları implemente eden sınıflar tarafından
yapılmak zorundadır...
***Interfaceler sayesinde dart dilinde olmayan çoklu kalıtım sağlanabilir. Bir sınıf birden fazla sınıfı
implements diyerek gerçekleştirebilir...
*/
void main(List<String> args) {}

abstract class Hayvan {
  //Extend edildiği için üretilen sınıflarda metot yazılmasa da çalışır...
  void soyutOlmayanMetot() {
    print("Soyut olmayan metot tanımlandı...");
  }
}

abstract class Ucabilenler {
  void fly();
  //İmplements edilince burdan türeyen sınıflarda da soyut olmayan sınıflar yazılmalıdır...
  void test() {
    print("Test");
  }
}

abstract class Kosabilenler {
  void run();
}

abstract class Havlayabilenler {
  void bark();
}

//Extends sadece bir sınıf için kullanılabilirken implements birden fazla sınıf için kullanılabilir...
class Kopek extends Hayvan implements Kosabilenler, Havlayabilenler {
  @override
  void bark() {
    print("Köpek havlıyor...");
  }

  @override
  void run() {
    print("Köpek koşuyor...");
  }
}

class Kus extends Hayvan implements Ucabilenler {
  @override
  void fly() {
    print("Kuş uçuyor...");
  }

  //İmplements edildiği için test() sınıfı tekrardan yazıldı...
  @override
  void test() {
    print("Bu bir testtir...");
  }
}

//Kalıtımsal bir alaka olmasa bile implements kullanılabilir(Robot bir hayvan değil ama yine de koşabilir)...
class Robot implements Kosabilenler {
  @override
  void run() {
    print("Robot koşuyor...");
  }
}
