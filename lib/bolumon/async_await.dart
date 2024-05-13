void main(List<String> args) async {
  print("İnternetten kişi verisi getirilecek...");
  //kisiVerisiGetir().then((value) => print(value));
  //Async await kullanım aşağıda...
  String sonuc = await kisiVerisiGetir();
  print(sonuc);
  print("Kişi verisi geldi...");
}

Future<String> kisiVerisiGetir() {
  return Future<String>.delayed(Duration(seconds: 3), () {
    return "Ad: Mehmet Fatih\nİd:2020";
  });
}
