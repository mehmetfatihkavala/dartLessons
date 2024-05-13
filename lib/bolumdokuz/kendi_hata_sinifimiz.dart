void main(List<String> args) {
  try {
    Ogrenci o1 = Ogrenci(-8);
    print(o1.yas);
  } on AgeException catch (e) {
    print(e.mesaj);
  }
}

class AgeException implements Exception {
  String mesaj;

  AgeException({this.mesaj = "AgeException"});

  @override
  String toString() {
    return "Hatanın toString methodu çalıştı...";
  }
}

class Ogrenci {
  int yas = 0;
  Ogrenci(int yas) {
    if (yas < 0) {
      throw AgeException(mesaj: "AgeExcaption -Yaş eksi olamaz...");
    } else {
      this.yas = yas;
    }
  }
}
