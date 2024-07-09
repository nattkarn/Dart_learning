void main() {
  List<int> data = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // List<int> resource = data.where((item) => item % 2 == 0).toList();
  List<int> resource = data.where((item) => item.isEven).toList();
  // List<int> resource = data.where((item) => item.isOdd).toList();

  print(resource);
}
