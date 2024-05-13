void main(List<String> args) {
//Parametre alan kurucu method yoksa böyle yazılır...
/*  Araba honda = Araba();
  honda.marka = "Honda";
  honda.modelYili = 2021;
  honda.otomatikMi = true;
*/
//Parametre alan constructor varsa...
  Araba ford = Araba("Ford", 2023, true);
  ford.bilgileriSoyle();
  Araba bmw = Araba("BMW", 2023, false);
  bmw.bilgileriSoyle();
  var suzuki = Araba.markasiz(2021, false);
  suzuki.bilgileriSoyle();
  Araba seat = Araba.modelYilsiz("SEAT", true);
  seat.bilgileriSoyle();
}

class Araba {
  String? marka;
  int? modelYili;
  bool? otomatikMi;

  //Varsayılan kurucu method...
  /*Araba() {
    print("Kurucu method çalıştı...");
  }*/

  //Varsayılan ve parametre alan kurucu method...
  /*Araba(String marka, int modelYili, bool otomatikMi) {
    print("Kurucu method çalıştı...");
    this.marka = marka;
    this.modelYili = modelYili;
    this.otomatikMi = otomatikMi;
  }*/

  //Varsayılan ve parametre alan kurucu methodun Basit gösterimi...
  Araba(String this.marka, int this.modelYili, bool this.otomatikMi) {
    print("Kurucu method çalıştı...");
  }
  /**********Varsayılan kurucu methoddan sadece bir tane oluşturulabilir.... */
  //İsim alan kurucu method
  //**** Bu kurucu methoddan istenildiği kadar oluşturulabilir.... */

  Araba.markasiz(int this.modelYili, bool this.otomatikMi) {
    print("Kurucu method çalıştı...");
  }
  Araba.modelYilsiz(String marka, bool otomatikMi) {
    this.marka = marka;
    this.otomatikMi = otomatikMi;
  }

  void bilgileriSoyle() {
    print("Marka: ${marka} yıl:${modelYili} otomatik mi: ${otomatikMi}");
  }
}
