//Sabit uzunluklu listeler...
/*List.filled(3, 1, growable: false) 
  **Burada parantezdeki ilk sayı liste uzunluğudur...
  **Parantezdeki ikinci sayı değer verilmezse verilecek varsayılan değerlerdir...
  **Growable ise büyüyüp büyüyemediğini belirtir...
  */
void main(List<String> args) {
  List<int> sayilar = List.filled(3, 1, growable: false);
  print(sayilar);
  //Değer verilmediği için 3 elemanlı ve tüm elemanları 1 olan bir liste yazdırdı...

  print("************************************************");

  List<int> sayilar2 = List.filled(3, 1);
  //growable yazılmayabilir varsayılan olarak false alır...
  sayilar2[0] = 5;
  sayilar2[1] = 6;
  sayilar2[2] = 8;
  print(sayilar2); //Verilen [5,6,8] değerleri ekrana yazdırıldı...

  print("************************************************");

  //String listeler...
  List<String> isim = List.filled(2, "");
  isim[0] = 5.toString();
  // int değerler toString ile stringe dönüştürülüp yazılabilir..
  isim[1] = "Ali";
  print(isim);

  print("************************************************");

  //Dinamik listeler(farklı değişken alan listeler)...
  List<dynamic> karisik = List<dynamic>.filled(5, "");
  karisik[0] = 5;
  karisik[1] = false;
  karisik[2] = "Mehmet";
  print(karisik);

  print("************************************************");

  List karisik2 = List.filled(5, 21);
  karisik2[0] = 21;
  karisik2[1] = "Diyarbakır";
  karisik2[2] = true;
  print(karisik2);

  print("************************************************");

  //Kısa for gösterimi...
  for (int oAnkiEleman in sayilar2) {
    print(oAnkiEleman);
  }
}
