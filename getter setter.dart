// Create Class
class Employee {
  //property
  String? _name;
  double? _salary;

  static int empCount = 10;

  Employee(this._name, this._salary);
  void ShowDetail() {
    print('ชื่อพนักงาน: ${this._name} เงินเดือน: ${this._salary}');
  }

  //getter
  String? get name => this._name!; //ยืนยันว่าไม่ใช่ค่า null !!!!
  double? get salary => this._salary;

  //setter
  set name(String? value) => this._name = value;
  set salary(double? value) => this._salary = value;

  //static method
  static void information() {
    print('ABC Company');
    print('Bangkok');
  }
}

void main() {
  Employee emp1 = Employee('Nattkarn', 30000);
  // emp1.ShowDetail();
  emp1.salary = 40000;
  print(emp1.name);
  print(emp1.salary);
  print(Employee.empCount);

  print('Information');
  Employee.information();
}
