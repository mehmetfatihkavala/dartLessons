void main(List<String> args) {
  //ciftSayi(12);
  print(ciftSayi(14));

  print("******************************");

  print("Dairenin alanı = " + daireAlan(5).toString());
  print("Dairenin alanı = " + daireAlan(2, 3).toString());

  print("******************************");

  ucgenCesidi(kenar1: 8, kenar2: 9, kenar3: 8);
  ucgenCesidi(kenar1: 5, kenar2: 5, kenar3: 5);
  ucgenCesidi(kenar1: 5, kenar2: 4, kenar3: 3);
}

int ciftSayi(int sayi) {
  int top = 0;
  for (int i = 0; i <= sayi; i++) {
    if (i % 2 == 0) {
      top = top + i;
    }
  }
  return top;
}

double daireAlan(int r, [double piSayi = 3.14]) {
  double alan;
  alan = piSayi * (r * r);
  return alan;
}

//Null değer olmadığını bildirmek için soru işareti(?) konabilir...
//Bu örnekte değer kullanıcıdan beklendiği için soru işareti koymamak daha mantıklıdır...
void ucgenCesidi({int? kenar1, int kenar2 = 1, int kenar3 = 5}) {
  if (kenar1 == kenar2 && kenar1 == kenar3) {
    print("Bu bir eşkenar üçgendir...");
  } else if (kenar1 != kenar2 && kenar1 != kenar3) {
    print("Bu bir çeşitkenar üçgendir...");
  } else {
    print("Bu bir ikizkenar üçgendir...");
  }
}
