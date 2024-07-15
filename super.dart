// Create Class
class Employee {
  //property
  String? _name;
  double? _salary;
  String companyName = 'ABC inc';

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

class Programmer extends Employee {
  Programmer(String name, double salary) : super.full(name, salary) {
    print('Programmer | ${super.companyName}');
    super.ShowDetail();
  }
}

class Accounting extends Employee {
  Accounting(String name, double salary) : super.full(name, salary) {
    print("Accounting | ${super.companyName}");
    super.ShowDetail();
  }
}

class Sale extends Employee {
  Sale(String name, double salary) : super.full(name, salary) {
    print("Sale | ${super.companyName}");
    super.ShowDetail();
  }
}

void main() {
  Programmer('ARM', 45000);
  Accounting('ARM', 45000);
  Sale('ARM', 45000);
}
