class Item<T> {
  T _value;

  Item(this._value);
  //generic method
  T get value => this._value;
  set value(T value) => this._value = value;
}

void main() {
  var obj1 = Item<int>(10);
  obj1.value = 100;
  print(obj1.value);

  var obj2 = Item('Dart');
  print(obj2.value);

  var obj3 = Item(10);
  print(obj3.value);
}
