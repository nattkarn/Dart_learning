class Database<T, U extends String> {
  var items = <T, U>{};

  void putItem(T id, U value) {
    items[id] = value;
  }
}

void main() {
  var obj1 = Database<int, String>();
  obj1.putItem(1, 'A');
  obj1.putItem(2, 'B');
  obj1.putItem(3, 'C');
  print(obj1.items);
}
