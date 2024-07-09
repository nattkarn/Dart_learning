void main() {
  List<int> data = [3, 4, 5]; //ipad, mouse, keyboard

  print(
      'Ipad: ${data[0]}|Mouse: ${data[1]}|Keyboard: ${data[2]}'); // เเสดงเเบบปกติ

  Map<String, int> products = {"Ipad": 3, "Mouse": 4, "Keyboard": 5};

  print(products);
  print('Ipad is: ${products['Ipad']}');
  products['Iphone'] = 5;

  products.addAll({"HDD": 2, 'Speaker': 10});
  print("length: ${products.length}");
  print('List of Keys: ${products.keys.toList()}');

  print('Have Ipad?: ${products.containsKey('Ipad')}');

  print('Quantity = 5 : ${products.containsValue(5)}');

  // for (var item in products.entries) {
  //   print('สินค้า: ${item.key} จำนวน: ${item.value}');
  // }

  products.forEach((key, value) {
    print('สินค้า: ${key} จำนวน: ${value}');
  });
}
