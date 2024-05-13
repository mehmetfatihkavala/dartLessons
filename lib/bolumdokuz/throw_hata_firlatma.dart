import 'dart:math';

void main(List<String> args) {
  try {
    double deger = karekokunuAl(-25);
    print("Sayının karekökü = $deger");
  } on FormatException catch (e) {
    print(e.message);
  } catch (e) {
    print(e);
  }
}

double karekokunuAl(int i) {
  if (i < 0) {
    throw FormatException("Hatalı sayı girdiniz...");
  } else
    return sqrt(i);
}
