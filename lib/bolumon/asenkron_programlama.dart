//import 'dart:io';
/**
 * Asenkron progmralama: Çocuğun ekmek alması annenin kahvaltıyı hazırlamasına engel olmadığı
 için olaylar aynı anda yapılır buna asenkron programlama denir. Future yapılar kullanılır...
 */

void main(List<String> args) {
  print("Anne çocuğu ekmek almaya yollar...");
  print("Çocuk ekmek almaya çıkar...");
  Future<String> sonuc = uzunSurenIslem();

  sonuc.then((String value) => print(value));

  print("Anne kahvaltıyı hazırlar...");
  print("Kahvaltı hazır...");
}

Future<String> uzunSurenIslem() {
  //sleep fonksiyonu çalışma zamanında durmaya yarar...
  /*sleep(Duration(seconds: 10));
  print("Çocuk ekmekle eve girer...");
  */ //Senkron programlama...
  Future<String> sonuc = Future.delayed(Duration(seconds: 10), () {
    return "Çocuk ekmekle eve girer...";
  });
  //Asenkron programlama...

  return sonuc;
}


//Hata olayları için videoyu izle...
