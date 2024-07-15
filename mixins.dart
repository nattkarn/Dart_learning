mixin Permission {
  void login() {
    print('Login Success');
  }
}

mixin DBCompany {
  void ShowInfo() {
    print('Company Info');
  }

  void ShowProduct() {
    print('Product Info');
  }
}

// Create Class
abstract class Employee {
  //property
  String? _name;
  double? _salary;
  String companyName = 'ABC Company';

  Employee() {
    print('Employee Default Constructor');
  }

  Employee.full(this._name, this._salary);
  void ShowDetail() {
    print('ชื่อพนักงาน: ${this._name} เงินเดือน: ${this._salary}');
  }

  //abstract method
  String getDepartment();
  void showRule();

  //getter
  String? get name => this._name!; //ยืนยันว่าไม่ใช่ค่า null !!!!
  double? get salary => this._salary;

  //setter
  set name(String? value) => this._name = value;
  set salary(double? value) => this._salary = value;
}

class Programmer extends Employee with Permission, DBCompany {
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

  @override
  String getDepartment() {
    return 'เเผนกโปรเเกรมเมอร์';
  }

  @override
  void showRule() {
    print('Software Developer');
  }
}

class Accounting extends Employee with Permission {
  Accounting(String name, double salary) : super.full(name, salary) {
    print("Accounting | ${super.companyName}");
  }
  @override
  String getDepartment() {
    return 'เเผนกบัญชี';
  }

  @override
  void showRule() {
    print('Currency Management');
  }
}

class Sale extends Employee with Permission, DBCompany {
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

  @override
  String getDepartment() {
    return 'เเผนกฝ่ายขาย';
  }

  @override
  void showRule() {
    print('Sale Something');
  }
}

void main() {
  var obj1 = Programmer('ARM', 45000, 5);
  obj1.login();
  obj1.ShowInfo();
  obj1.ShowProduct();
  obj1.ShowDetail();
  obj1.showRule();
  print('--------------------------------');
  var obj2 = Accounting('ARM', 45000);
  obj2.login();
  obj2.ShowDetail();
  obj2.showRule();
  print('--------------------------------');
  var obj3 = Sale('ARM', 45000, 'bkk');
  obj3.login();
  obj3.ShowInfo();
  obj3.ShowProduct();
  obj3.ShowDetail();
  obj3.showRule();
  print('--------------------------------');
}
