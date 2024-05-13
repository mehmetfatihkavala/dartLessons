/**
 * Dart optionally typed bir dildir.Yani veri tiplerini belirtmek isteğe bağlıdır...
 * Sürekli kullanılan koleksiyon yapıları(list,map,set) varsayılan olarak heterojendir.
 Yani aynı koleksiyon yapısında farklı türde verileri saklayabilirsiniz. Ama yapmalı mıyız?..
 * 
 * Generic tipler sayesinde bir yapıda hangi tür verilerin olacağını söyleriz. Böylece
 bu yapılar type-safe olur, compile timede hatalı veri girişi tespit edilir ve bize hatamız 
 söylenir.Böylece runtimeda çıkabilecek hataların önüne geçilir...
 *
 * Generic tipler <> içinde belirtilir. List<String> ifadesi bu listede sadece String veriler 
 olacağı anlamı taşır. Bu listeye String dışında bir veri eklenirse daha programı çalıştırmadan 
 hata alırız ve düzeltmemiz gerekir. Böylece daha güvenle kod yazmış oluruz...
 *
 * Genericler dartta bulunan çoğu yapıda zaten vardır. List,map,set,Future,Stream gibi...
 Kendi oluşturduğumuz sınıflarda ve metotlarda da genericleri uygulayabilirsiniz. Böylece hem daha
 güvenli kod yazmış olursunuz hem de benzer amaçları gerçekleştiren kod yapılarını tek bir yapıda top-
 layabilirsiniz...
 */
void main(List<String> args) {
  List<String> liste = [];
  liste.add("Mehmet Fatih");
  liste.add("KAVALA");

  yazdir(liste);

  //List<E> ==> Element
  //Map<K>  ==> Key
  //Map<V>  ==> Value
  //R       ==> Methodların return tipleri için
}

yazdir(List list) {
  print(list[1].length);
}
