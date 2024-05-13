void main(List<String> args) {
  // Veri türü üst sınıftan üretilmesi daha iyi olur...
  //Eğer veritabani türünü değiştirmek istersek böylelikle sadece OracleDB()değiştirmek yetecektir...
  //Veritabani db = OracleDB();
  Veritabani db = FirebaseDB();
  db.userDelete();
  db.userSave();

  userGuncelle(db);
}

void userGuncelle(Veritabani veritabani) {
  veritabani.userUpdate();
}

abstract class Veritabani {
  void userSave();
  void userDelete();
  void userUpdate();
}

class OracleDB extends Veritabani {
  @override
  void userDelete() {
    print("Dbden kullanıcı silindi...");
  }

  @override
  void userSave() {
    print("Dbye kullanıcı eklendi...");
  }

  @override
  void userUpdate() {
    print("Dbden kullanıcı güncellendi...");
  }
}

class FirebaseDB extends Veritabani {
  @override
  void userDelete() {
    print("Dbden kullanıcı silindi...");
  }

  @override
  void userSave() {
    print("Dbye kullanıcı eklendi...");
  }

  @override
  void userUpdate() {
    print("Dbden kullanıcı güncellendi...");
  }
}
