import 'veri_tabani_islemleri.dart';
import 'musteri.dart';

void main(List<String> args) {
  VeriTabaniIslemleri db = VeriTabaniIslemleri();
  //Burada db. dan sonra sadece bağlan methodu görülebilir çünkü id ve şifre privatettir...
  /*VeriTabaniIslemleri db2 =
      VeriTabaniIslemleri.loginWithNameandPassword("Fatih", "212121");*/

  Musteri m1 = Musteri(221);
  Musteri m2 = Musteri(585);
  m1.bilgilerGoster();
  m2.bilgilerGoster();
  m1.musteriNoAta = 321;
  m1.bilgilerGoster();

  //Getter çağırma...
  print(m1.musteriNoSoyle);
  print(m2.musteriNoSoyle2);

  bool sonuc = db.baglan();
  if (sonuc) {
    print("Bağlanıldı...");
  } else {
    print("İnternet yok veya Kullanıcı adı veya şifre yanlış");
  }
}
