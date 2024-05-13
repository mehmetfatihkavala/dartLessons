void main(List<String> args) {
  Map<String, int> alanKodlari = {
    "Ankara": 312,
    "İstanbul": 212,
    "Diyarbakır": 412
  };
  print(alanKodlari);
  print(alanKodlari[412]);

  print("******************************");

  Map<String, dynamic> ben = {
    "İsim": "Mehmet Fatih",
    "Soyisim": "KAVALA",
    "Yaş": 22,
    "Boy": 1.80,
    "Kilo": 65,
    "Bekar mı": true
  };
  print(ben);
  print(ben["Yaş"]);

  print("******************************");

  //Boş mapler yapma...
  Map<String, dynamic> deneme = Map();
  Map<String, dynamic> deneme2 = {};
  //Boş maplere eleman ekleme...
  deneme["Yaş"] = 22;
  deneme2["Vakit"] = false;

  //Değerleri gezme...

  //1.Keyleri gezme...
  for (String oAnkiAnahtar in ben.keys) {
    print(oAnkiAnahtar);
    //Keyler(isim,soy isim,yaş...) verir...
    print(ben[oAnkiAnahtar]);
    //Values(Mehmet Fatih,KAVALA,22...) verir...
  }

  print("******************************");

  //2.Valuleri gezme...
  for (dynamic deger in ben.values) {
    print(deger);
  }

  print("******************************");

  //3.İkisini(entries) beraber gezme...
  for (var element in ben.entries) {
    print("Key: " + element.key + " Values: " + element.value.toString());
  }

  print("******************************");

  //4.Değerin olup olmadığına bakma...
  if (ben.containsKey("Yaş")) {
    print("Yaşınız: ${ben["Yaş"]}");
  }
}
