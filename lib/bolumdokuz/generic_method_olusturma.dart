void main(List<String> args) {
  double doubleOrt = ortalamaBul<double>(5.2, 7.1);
  double intOrt = ortalamaBul<int>(5, 2);
  //Eğer int değer olarak tanımlarsak double değer yazamayız hata verir...
  print(doubleOrt);
  print(intOrt);
}

double ortalamaBul<T extends num>(T s1, T s2) {
  return (s1 + s2) / 2;
}
