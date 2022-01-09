import 'package:dart_basics/library.dart';

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
}
