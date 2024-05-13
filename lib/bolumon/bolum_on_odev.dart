void main(List<String> args) {
  idyeGoreUserGetir(21).then((value) => print(value));
}

Future<Map<String, dynamic>> idyeGoreUserGetir(int id) {
  print("$id'li kullanıcı getiriliyor...");
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {"username": "Mehmet Fatih", "id": id};
  });
}
