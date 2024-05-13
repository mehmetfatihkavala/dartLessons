void main(List<String> args) {
  toplama();
  print("Sayıların farkı = " + cikarma(8, 2).toString());
  print("Sayıların çarpımı = " + carpma(8, 5).toString());
  print("Büyük olan sayı: " + karsilastirma(12, 25).toString());
}

void toplama() {
  int sayi1 = 5;
  int sayi2 = 6;
  print("Sayıların toplamı = ${sayi1 + sayi2}");
}

int cikarma(int s1, int s2) {
  return s1 - s2;
}

//Fonksiyonlarda kısa gösteri Fat Arrow(=>) ile olur...
//Sadece tek satırlık kodlarda yapılabilir...
int carpma(int s1, int s2) => s1 * s2;

//Tek satırlık kod olması için if'in kısa hali kullanıldı...
int karsilastirma(int s1, int s2) => s1 > s2 ? s1 : s2;
