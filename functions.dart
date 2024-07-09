int y = 300, z = 400;

void main() {
  ShowData('ARM', 29);

  ShowData2(a: 'ARM');
  ShowData2(a: 'ARM', b: 29);

  print('อายุ: ${getAge(year: 1995)}');

  var fn = calculator('+'); // + , -
  print(fn(y, z));
}

void ShowData(String a, int b) {
  print('ชื่อ: ${a} อายุ: ${b}');
}

//request parameter
void ShowData2({required String a, int? b}) {
  print('ชื่อ: ${a} อายุ: ${b}');
}

// int getAge({required int year}) {
//   int age = 2023 - year;
//   return age;
// }

int getAge({required int year}) => 2023 - year; //เหมือนอันบน

int add(int a, int b) => a + b;
int subtract(int a, int b) => a - b;

Function calculator(String symbol) {
  // +,-
  if (symbol == '+') return add;
  if (symbol == '-') return subtract;
  return add;
}
