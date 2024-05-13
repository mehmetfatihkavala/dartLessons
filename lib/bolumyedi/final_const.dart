void main(List<String> args) {
  var str = "Mehmet";
  str = "Fatih";
  //Final ve const ile var beraber kullanılmaz...
  final String str2 = "Mehmet";
  //Final kullanıldığında değişken daha sonra değişemez...
  //str2 = "Fatih";
  const String str3 = "Mehmet";
  //Const kullanıldığında değişken daha sonra değişemez...
  //str3 = "Fatih";
  print(str);
  print(str2);
  print(str3);
}
