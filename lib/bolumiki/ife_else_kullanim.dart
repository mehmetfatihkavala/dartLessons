void main(List<String> args) {
  int sayi1 = 12;
  int sayi2 = 18;

  if (sayi1 > sayi2) {
    print("$sayi1 sayısı $sayi2 sayısından büyüktür");
  } else if (sayi1 < sayi2) {
    print("$sayi1 sayısı $sayi2 sayısından küçüktür.");
  } else {
    print("$sayi1 sayısı $sayi2 sayısına eşittir.");
  }

  print("********************************************");

  int notDegeri = 75;

  if (notDegeri < 50 && notDegeri > 0) {
    print("Harf notunuz: F");
  } else if (notDegeri < 60 && notDegeri > 49) {
    print("Harf notunuz: D");
  } else if (notDegeri < 70 && notDegeri > 59) {
    print("Harf notu: C");
  } else if (notDegeri < 80 && notDegeri > 69) {
    print("Harf notunuz: B");
  } else if (notDegeri < 90 && notDegeri > 79) {
    print("Harf notunuz: A");
  } else {
    print("Harf notunuz: AA");
  }
}
