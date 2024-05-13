void main(List<String> args) {
  MyStack myStack = MyStack();

  myStack.push("Eleman");
  myStack.push(21);
  myStack.push(true);

  print(myStack.pop());
  print(myStack.pop());
  print(myStack.pop());

  IntStack intStack = IntStack();
  intStack.push(8);
  //intStack.push("skjdflks");
  //İnteger belirlediğimi için string değer almaz hata verir...

  StringStack stringStack = StringStack();
  stringStack.push("selam");
  //stringStack.push(5);
  //String belirlendiği için int değer alınca hata verir...

  GenericStack<String> genericStack = GenericStack();
  genericStack.push("Merhaba");
  //genericStack nesnesi artık sadece string değer alır.Başka türde değer kabul etmez...
  //genericStack.push(5);
  print(genericStack.pop());

  GenericStack<int> intGenericStack = GenericStack();
  intGenericStack.push(21);
  print(intGenericStack.pop());
}

class MyStack {
  List _list = [];

  push(yeniEleman) {
    _list.add(yeniEleman);
  }

  pop() {
    return _list.removeLast();
  }
}

class IntStack<int> {
  List<int> _list = [];

  void push(int yeniEleman) {
    _list.add(yeniEleman);
  }

  int pop() {
    return _list.removeLast();
  }
}

class StringStack {
  List<String> _list = [];

  void push(String yeniEleman) {
    _list.add(yeniEleman);
  }

  String pop() {
    return _list.removeLast();
  }
}

class GenericStack<T> {
  List<T> _list = [];

  void push(T yeniEleman) {
    _list.add(yeniEleman);
  }

  T pop() {
    return _list.removeLast();
  }
}
