void main(List<String> args) {
  int sayi1 = 21;
  int sayi2 = 32;
  int kucukSayi;

  sayi1 < sayi2 ? kucukSayi = sayi1 : kucukSayi = sayi2;
// if ? işareti ile sağlanır. else kısmı iki nokta " : " ile sağlanır....
// Farklı bir kullanım olarak:
  kucukSayi = sayi1 < sayi2 ? sayi1 : sayi2;
// İki kullanımın da sonucu aynıdır...
  print("Küçük sayı: $kucukSayi");

  print("**************************************************");

  String? ad = null;
  String? soyad = "KAVALA";
  String? mesaj;

  mesaj = ad ?? soyad;
//Eğer ad null ise soyadı yazdır soyad null ise adı yazdır...
//Eğer soyad null ise uyarı verir ama kod çalışır...
  print("$mesaj");
}
