void main(List<String> args) {
  //Required parametre
  int toplam = sayilariTopla(8, 16);
  print("Sayıların toplamı: $toplam");

  print("**********************************");

  //Optional parametre
  print("Sayıların toplamı= " + toplama(5, 8, 9).toString());
  print("Sayıların toplamı= " +
      toplama(5, 8).toString()); // İki parametre gönderildi...
  print("Sayıların toplamı= " +
      toplama(5).toString()); // Tek parametre gönderildi...

  print("**********************************");

  //Optional named
  print("Sayıların çarpımı: " +
      carpma(5, s3: 8, s2: 9)
          .toString()); // Küme parantezi içindeki parametreler isim verilerek yazılır...
  print("Sayıların çarpımı: " + carpma(5, s2: 8).toString());
  print("Sayıların çarpımı: " + carpma(5, s3: 9).toString());
}

//Required parametreler...
//Parametrelerin tamamı girilmek zorunda...
int sayilariTopla(int sayi1, int sayi2) {
  return sayi1 + sayi2;
}

//Optional parametreler
//Köşeli parantez içine alınan sayılar kullanıcıya göre parametre alır.
//Null değer almaması için default değer verilir. Aşağıdaki methotta toplama da sıfır etkisiz eleman olduğu için default değer olarak 0 verilmiştir...
//Köşeli parantez içinde olmayan parametre girilmek zorundadır...
int toplama(int s1, [int s2 = 0, int s3 = 0]) {
  return s1 + s2 + s3;
}

//Optional named
//Küme parantezi içindeki parametreler kullanıcıya göre değer verilir...
//Küme parantezi dışında parametre konulacaksa en başa konulmalı...
//Null değer almaması için yine default değer verilir...
int carpma(int s1, {int s2 = 1, int s3 = 1}) {
  return s1 * s2 * s3;
}
// ***Süslü parantez ile köşeli parantez birarada kullanılamaz...
