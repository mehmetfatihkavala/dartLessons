void main(List<String> args) {
  print("Program başladı...");

  /*"~" işareti alt+0126 kısayolu ile yazılır ve double çıkan sayıların sadece tam sayı
  kısmının alınmasını sağlar */
  int sayi2 = 100 ~/ 6;
  print(sayi2);

  /*
    try kısmı kodu dener eğer kodda hata olmazsa kod bloğu çalışır.Eğer kodda hata çıkarsa
  catch kısmında yazılan yazı yazar...
    catch bloğu eğer oluşacak hata bilinmiyorsa yazılır...
    finally bloğunda ise hata çıksın veya çıkmasın çalışacak kodlar yazılır...
  */
  try {
    int sayi = 100 ~/ 0;
    print(sayi);
  } on UnsupportedError {
    print("Bölen sıfır olamaz...");
  } catch (e) {
    print("Hata çıktı $e");
  } finally {
    print("İşlem bitti...");
  }

  print("Program bitti...");
}
