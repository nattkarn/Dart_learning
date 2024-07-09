void main() {
  var score = [100, 90, 80];

  List<String> data = ["ARM", "Nattkarn"];

  // print(score.isEmpty); //first length

  score.add(70);
  score.addAll([60, 50, 30, 40, 20, 10]);

  score.insert(1, 95); // add between index insert(index, value)

  print(score.indexOf(95)); //if not found is show -1
  // print(score.contains(50));

  // score.remove(95);
  score.removeAt(1);

  String text = score.join("|");
  print(text);

  score.sort();
  print(score.reversed);

  // for (int i in score) {
  //   print(i);
  // }

  score.forEach((element) {
    print('score: ${element}');
    print('-----------------');
  });
}
