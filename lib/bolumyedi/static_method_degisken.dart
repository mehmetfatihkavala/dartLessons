/*
  Sınıflarımızda nesne üretmeden bazı değişkenlere ve methodlara erişmek isteyebiliriz.
Burada karşımıza static kavramı ortaya çıkar...
***Static kullanarak nesne değil sınıf değişkenleri ve methodları oluşturabiliriz...
***Bir sınıfta tanımlanan method ve değişkenlere erişirken mutlaka nesne üretmemiz
gerekir. Ama biz bunları static olarak tanımlarsak artık nesne üretmeden bu değerlere
erişebiliriz ve kullanabiliriz. Artık onlar nesnelerin değil sınıfın method ve değişkenleridir...
***Ayrıca stactic değişkenler kulanılana dek değer almazlar ve bellekte yer kaplamazlar...
***Static methodların içinde this anahtar kelimesi kullanılmaz...
***Static methodlar içinden nesneye özgü alanlara erişilmezken, nesneye özgü metot içinden 
static değerlere erişilebilir...
*/
void main(List<String> args) {
  Matematik s1 = Matematik(5, 4);
  Matematik s2 = Matematik(30, 58);
  s1.topla();
  s1.cikar();
  s2.topla();
  s2.cikar();

  //Nesne üretmeden static değişkene erişme...
  print(Matematik.piSayisi);
  Matematik.sinifAdiniSoyle();

  //Instance variable olduğu için sadece s1 nesnesinin toplam işlem sayısını verir.
  //Yani çıktı 2 olur...
  print("Toplam işlem sayısı ${s1.toplamIslemSayisi}");

  //Static olduğu için tüm sınıftaki işlem sayisini verir...
  print("Toplam işlem sayısı ${Matematik.islemSayisi}");
}

class Matematik {
  //Instance variable (nesne değişkeni)...
  int sayi1 = 0;
  int sayi2 = 0;
  int toplamIslemSayisi = 0;
  static int islemSayisi = 0;

  //Class variable (sınıf değişkeni)...
  static double piSayisi = 3.14;

  static void sinifAdiniSoyle() {
    print("Ben matematik sınıfıyım...");
  }

  Matematik(this.sayi1, this.sayi2);

  void topla() {
    islemSayisi++;
    toplamIslemSayisi++;
    print("Toplam = ${sayi1 + sayi2}");
  }

  void cikar() {
    islemSayisi++;
    toplamIslemSayisi++;
    print("Sonuç = ${sayi1 - sayi2}");
  }
}
