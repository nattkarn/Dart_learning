// Create Class
class Employee {
  //property
  String? name;
  double? salary = 15000;
  bool? bonus;

  //Parameter constructor
  // Employee(this.name, this.salary);

  //Named Parameter
  // Employee({required String? name, double? salary}) {
  //   this.name = name;
  //   this.salary = salary;
  // }

  //Named Constructor
  //ไม่มีข้อมูลพนักงาน
  Employee() {
    print('ข้อมูลพนักงาน');
  }

  //ใส่เเค่ชื่อ
  Employee.nameOnly(String name) {
    this.name = name;
  }

  //ชื่อ - เงินเดือน
  Employee.full(String name, double salary) {
    this.name = name;
    this.salary = salary;
  }

  Employee.extra(String name, double salary, bool bonus) {
    this.name = name;
    this.salary = salary;
    this.bonus = bonus;
  }
}

void main() {
  // Create Object
  // var emp1 = Employee();
  // emp1.name = "nattkarn";

  //cascade operator
  // Employee emp2 = Employee()
  //   ..name = 'arm'
  //   ..salary = 25000;
  // print('พนักงานชื่อ: ${emp2.name} | เงินเดือน: ${emp2.salary}');

  // var emp1 = Employee('Nattkarn', 25000);
  // print('พนักงานชื่อ: ${emp1.name} | เงินเดือน: ${emp1.salary}');

  //Named Constructor
  //ไม่มีข้อมูลพนักงาน
  Employee emp1 = Employee();

  //ใส่เเค่ชื่อ
  Employee emp2 = Employee.nameOnly('Nattkarn');
  print('ชื่อพนักงาน: ${emp2.name} เงินเดือน: ${emp2.salary}');

  //ชื่อ - เงินเดือน
  Employee emp3 = Employee.full('Nattkarn', 30000);
  print('ชื่อพนักงาน: ${emp3.name} เงินเดือน: ${emp3.salary}');

  //ชื่อ - เงินเดือน
  Employee emp4 = Employee.extra('Nattkarn', 30000, true);
  print(
      'ชื่อพนักงาน: ${emp3.name} เงินเดือน: ${emp3.salary}, Bonus: ${emp4.bonus}');
}
