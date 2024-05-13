//Büyüyebilen listeler...
void main(List<String> args) {
//Boş listeye eleman ekleyerek listeyi büyütmek...
  List<int> sayilar = [];
  sayilar.add(3);
  sayilar.add(5);
  sayilar.add(8);
  print(sayilar);
  print(sayilar.length);

  print("************************************************");
//Elemanları olan listeyi büyütmek...
  List<int> sayilar2 = [2, 3, 5];
  sayilar2.add(8);
  sayilar2.add(12);
  print(sayilar2);
  print(sayilar2.length);

  print("************************************************");
//Growable true yapıp listeyi büyütmek...
  List<int> sayilar3 = List.filled(2, 1, growable: true);
  sayilar3.add(12);
  sayilar3.add(12);
  sayilar3.add(21);
  print(sayilar3);
  print(sayilar3.length);

  print("************************************************");
//Empty ile Boş liste yapıp eleman ekleyerek listeyi büyütmek...
  List<int> sayilar4 = List.empty(growable: true);
  sayilar4.add(12);
  sayilar4.add(21);
  print(sayilar4);
  print(sayilar4.length);
}
