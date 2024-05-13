class Ogrenci {
  int id;
  int notDegeri;

  Ogrenci({this.id = 1, this.notDegeri = 1});

  @override
  String toString() {
    return "Id: $id not:$notDegeri";
  }
}
