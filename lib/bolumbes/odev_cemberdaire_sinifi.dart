class CemberDaire {
  double _piSayisi = 3.14;
  int _yariCap = 1;

  CemberDaire() {}

  void set yariCapAta(int yariCap) {
    _yariCap = yariCap;
  }

  String get cevreSoyle {
    double cevre = 2 * _piSayisi * _yariCap;
    return "Çevre: $cevre";
  }

  String get alanSoyle {
    double alan = _piSayisi * (_yariCap * _yariCap);
    return "Alan: $alan";
  }
}
