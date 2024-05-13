import 'dart:math';

class VeriTabaniIslemleri {
  /*
  Dart dilinde private ifade yapmak için ifadenin başına alt çizgi"_" konur...
  */
  String _kullaniciAdi = "Mehmet";
  String _sifre = "123456";

  VeriTabaniIslemleri() {}

  VeriTabaniIslemleri.loginWithNameandPassword(
      String _kullaniciAdi, String _sifre) {}

  bool baglan() {
    if (_internetVarMi()) {
      if (_kullaniciAdi == "Mehmet" && _sifre == "123456") {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  //Random().nextBool() fonksiyonu rastgele boolean değer döndürür...
  bool _internetVarMi() {
    if (Random().nextBool()) {
      return true;
    } else {
      return false;
    }
  }
}
