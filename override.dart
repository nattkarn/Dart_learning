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
  int? exp;
  Programmer(String name, double salary, int exp) : super.full(name, salary) {
    print('Programmer | ${super.companyName}');
    this.exp = exp;
  }
  @override
  void ShowDetail() {
    print(
        'ชื่อพนักงาน: ${this._name} เงินเดือน: ${this._salary} ประสบการณ์ ${this.exp}');
  }
}

class Accounting extends Employee {
  Accounting(String name, double salary) : super.full(name, salary) {
    print("Accounting | ${super.companyName}");
  }
}

class Sale extends Employee {
  String? location;
  Sale(String name, double salary, String location) : super.full(name, salary) {
    print("Sale | ${super.companyName}");
    this.location = location;
  }
  @override
  void ShowDetail() {
    print(
        'ชื่อพนักงาน: ${this._name} เงินเดือน: ${this._salary} พื้นที่ดูเเล ${this.location}');
  }
}

void main() {
  var obj1 = Programmer('ARM', 45000, 5);
  obj1.ShowDetail();
  var obj2 = Accounting('ARM', 45000);
  obj2.ShowDetail();
  var obj3 = Sale('ARM', 45000, 'bkk');
  obj3.ShowDetail();
}
