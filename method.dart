// Create Class
class Employee {
  //property
  String? name;
  double? salary;

  Employee(this.name, this.salary);
  void ShowDetail() {
    print('ชื่อพนักงาน: ${this.name} เงินเดือน: ${this.salary}');
  }
}

void main() {
  Employee emp1 = Employee('Nattkarn', 30000);
  emp1.ShowDetail();
}
