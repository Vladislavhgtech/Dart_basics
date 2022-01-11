import 'package:dart_basics/library.dart';

double mabs(double x) {
  return (x < 0) ? -x : x;
}

void main() {
  DelimetersCalculator test1 = new DelimetersCalculator(100, 200, 34);
  test1.display();

  DecimalToBinary test2 = new DecimalToBinary(16, '000111001');
  test2.display();

  StringToIntList test3 = new StringToIntList('a0d0f0gh1j1k2k23455');
  test3.display();

  List<String> list = ["привет", "привет", "пока", "пока", "2", "3", "3"];
  ListToMap test4 = new ListToMap(list);
  test4.display();

  List<String> list1 = ["one", "two", "three", "cat", "dog"];
  WordToNumber wtn = new WordToNumber(list1);
  wtn.display();

  Point A = new Point(1, 2, 3);
  Point B = new Point.zero(0);
  print(A.distanceTo(B));

  RootCalculations test7 = new RootCalculations(1024, 10);
  test7.RC(1024, 10);
}
