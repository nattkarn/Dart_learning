void main() {
  Set a = {10, 29, true, "aaaa"}; //ข้อมูลห้ามซ้ำกัน
  Set<int> b = {10, 20, 30, 40, 50};
  Set<int> c = {5, 15, 25, 35, 45, 50};

  print('union: ${b.union(c)}'); //เอาค่ามารวมกัน
  print('intersection: ${b.intersection(c)}'); //เอาค่าที่เหมือนกัน
  print('difference: ${b.difference(c)}'); //เอาค่าที่มีใน b เเต่ไม่มีใน c
}
