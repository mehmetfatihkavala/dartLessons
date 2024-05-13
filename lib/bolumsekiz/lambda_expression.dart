/*
***Lambda ismi olmayan fonksiyonlardır...
***Dartta her fonksiyon aslında bir nesnedir...
*/
void main(List<String> args) {
  //Her fonksiyon nesne olduğu için atama yaparak bir fonksiyon yazılabilir...
  var fonkisyon1 = (int a, int b) {
    int toplam = a + b;
    print("toplam= $toplam");
  };
  fonkisyon1(2, 5);

  print("**********************************");

  //Başka bir kullanım...
  Function fonkisyon2 = (int a, int b) {
    int sonuc = a - b;
    print("sonuç= $sonuc");
  };
  fonkisyon2(8, 2);

  print("**********************************");

  topla(7, 6);

  print("**********************************");

  var carp = (int a, int b) => a * b;
  var carp2 = (int a, int b) {
    return a * b;
  };

  var esit = carp2(8, 5);
  print("Sonuc = $esit");
  print("Sonuc = ${carp(8, 9)}");
}

//Normal fonksiyon...
void topla(int a, int b) {
  int toplam = a + b;
  print("toplam= $toplam");
}
