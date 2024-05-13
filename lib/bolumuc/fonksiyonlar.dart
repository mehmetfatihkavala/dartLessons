void main(List<String> args) {
  cevreHesapla();
  int sonuc = alanHesapla(8, 9);
  int hacim = hacimHesapla(8, 9, 10);
  print("Alan: $sonuc");
  print("Hacim: $hacim");
  print(
      "Hacim: ${hacimHesapla(4, 5, 6)}"); //Direkt print içinde de yazılabilir...
}

// Parametre almayan ve geri değer döndürmeyen fonksiyon...
// Geriye değer döndürmediği için okunurluk açısından void kullanılmalıdır...
void cevreHesapla() {
  int kenar1 = 8;
  int kenar2 = 12;
  print("Çevre: ${kenar1 * kenar2}");
}

// Parametre alan ve geri dönen fonksiyon...
// Geri değer döndürünce döndüğürdüğü tür başa yazılmalı...
int alanHesapla(sayi1, sayi2) {
  return sayi1 * sayi2; // Geri döndürme buradan olur...
}

int hacimHesapla(int en, int boy, int yukseklik) {
  return en * boy * yukseklik;
}
