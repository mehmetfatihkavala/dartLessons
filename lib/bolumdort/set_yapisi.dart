/*1.Set yapısında aynı değerler varsa sadece bir kez ekran yazdırılır...
  2.Sıralı bir şekilde eklenmez.Bu yüzden index kullanılamaz...
  3.İndex olmadığı için değerler contains methodu ile bulunur...
*/
void main(List<String> args) {
  //var isimler = Set();
  //var ile de yazılabilir...
  Set<String> isimler = Set();
  isimler.add("Mehmet");
  isimler.add("Ali");
  isimler.add("Ali");
  isimler.add("Ali");
  isimler.add("Fatih");
  isimler.add("Serrahim");
  isimler.add("Ali");
  isimler.add("Ali");
  isimler.add("Serhat");

  if (isimler.contains("Serhat")) {
    print("Aradığınız isim listede bulunmakta...");
  }

  print("**********************************");

  for (String kopya in isimler) {
    print("İsim: " + kopya);
  }

  print("**********************************");

  var numaralar = Set.from([
    1,
    2,
    6,
    5,
    8,
    7,
    12,
    21,
    12,
    1,
    2,
    3,
    5,
    9,
    4,
  ]);
  List<int> cift = [2, 4, 6, 8, 10];
  for (int kopya1 in numaralar) {
    print("No: " + kopya1.toString());
  }
  //Listeleri set ile birleştirme...
  numaralar.addAll(cift);

  for (int kopya1 in numaralar) {
    print("addAll'dan sonra No: " + kopya1.toString());
  }
}
