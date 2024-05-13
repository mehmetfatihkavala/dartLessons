/*
***Bir fonksiyonu parametre olarak alan veya geriye bir fonksiyon döndüren fonksiyonlardır...
***Tabi ikisi aynı anda da yapılabilir...
*/

void main(List<String> args) {
  List<int> liste = [1, 2, 3];

  //Parametre olarak bir fonksiyonu aldı...
  liste.forEach(callBack);

  print("*****************************");
  //Daha basit olarak yazılışı...
  liste.forEach((element) {
    print("Element : $element");
  });

  print("*****************************");
  //Kendi yazıdğımız daha gelişmiş forEach yapısının kullanımı...
  kendiForEachYapim(liste, (int deger, int index) {
    print("Değer : $deger ve index : $index");
  });
}

void kendiForEachYapim(List liste, Function geriDonus) {
  for (int i = 0; i < liste.length; i++) {
    geriDonus(liste[i], i);
  }
}

void callBack(int element) {
  print("Element : $element");
}
