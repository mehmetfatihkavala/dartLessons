import 'dart:io';

void main(List<String> args) {
  List<String> sehirler = ["Diyarbakır", "İstanbul", "Denizli", "Ankara"];
  for (String s in sehirler) {
    print(s);
  }
  Map<String, dynamic> pc = {
    "Çekirdek Sayısı": 8,
    "Ram": 8,
    "SSD var mı": true
  };
  for (var bil in pc.entries) {
    print(bil.key + " " + bil.value.toString());
  }

  print("*******************************************");

  Map<String, dynamic> ulke = {
    "İl": "Diyarbakır",
    "İlçe sayısı": 15,
    "plaka kodu": 21
  };
  for (var bilgi in ulke.entries) {
    print(bilgi.key + " " + bilgi.value.toString());
  }

  print("*******************************************");

  var list1 = [1, 50, 6, 47, 5];
  var list2 = [7, 9, 41, 48, 49];
  var birles = [...list1, ...list2];
  var sonList = <int>{};

  print(birles);
  for (int i = 0; i < birles.length; i++) {
    int a = birles[i] * birles[i];
    sonList.add(a);
  }
  print(sonList);

  print("****************************************");
  List<int> sayilar = [];
  int a = 0;
  while (a < 1) {
    print("1.Listeye ekleme yap...");
    print("2.Listeyi görüntüle...");
    print("0.Listenin ortalamasını gör...");
    print("Çıkış için 3'e basınız...");
    int? deger = int.parse(stdin.readLineSync()!);
    switch (deger) {
      case 1:
        print("Listeye eklemek istediğiniz değeri giriniz...");
        int? alinan = int.parse(stdin.readLineSync()!);
        sayilar.add(alinan);
        break;
      case 2:
        print(sayilar);
        break;
      case 0:
        double ort = 0;
        int top = 0;
        for (int i = 0; i < sayilar.length; i++) {
          top = top + sayilar[i];
        }
        ort = top / (sayilar.length);
        print(ort);
        break;
      case 3:
        a = 1;
        break;
      default:
        {
          print("Yanlış değer girdiniz...");
        }
    }
  }
}
