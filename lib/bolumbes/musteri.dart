class Musteri {
  int? _musteriNo;

  Musteri(int musteriNo) {
    _musteriNoKontrol(musteriNo);
  }
  /*Setter fonksiyonların kullanımı...
  musteriNoAta fonksiyonu şeklinde kullanılır...
  */
  void set musteriNoAta(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else {
      return;
    }
  }

  //Getter kullanımı...
  String get musteriNoSoyle {
    return "Müşteri no: $_musteriNo";
  }

  //fatarrow ile kullanımı...
  String get musteriNoSoyle2 => "Müşteri no: $_musteriNo";

  void _musteriNoKontrol(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else {
      return;
    }
  }

  void bilgilerGoster() {
    print("Müşteri oluşturuldu Müşteri no: $_musteriNo");
  }
}
