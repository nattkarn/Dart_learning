// Create Class
class Employee {
  //property
  String? _name;
  double? _salary;

  Employee() {
    print('Employee Default Constructor');
  }

  Employee.full(this._name, this._salary);
  void ShowDetail() {
    print('ชื่อพนักงาน: ${this._name} เงินเดือน: ${this._salary}');
  }

  //getter
  String? get name => this._name!; //ยืนยันว่าไม่ใช่ค่า null !!!!
  double? get salary => this._salary;

  //setter
  set name(String? value) => this._name = value;
  set salary(double? value) => this._salary = value;
}

class Programmer extends Employee {}

class Accounting extends Employee {}

class Sale extends Employee {}

void main() {
  Employee emp1 = Employee.full('Nattkarn', 30000);
  // emp1.ShowDetail();
  emp1.salary = 40000;
  print(emp1.name);
  print(emp1.salary);

  Programmer object = Programmer();
  object.name = 'ARM';
  print('ชื่อโปรเเกรมเมอร์: ${object.name}');
}
