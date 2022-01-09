/* Реализуйте метод, который принимает строку слов, разделённых пробелами. 
Задача — найти в данной строке числа и вернуть коллекцию num этих чисел. */

class StringToIntList {
  String incoming_string;

  StringToIntList(this.incoming_string);
  StringToIntList.undefined() : this('0');
  StringToIntList.Incomming(incoming_string) : this(incoming_string);

  bool _isNumeric(String str) {
    if (str == null) {
      return false;
    }
    return double.tryParse(str) != null;
  }

  List<int> num(String str) {
    List<int> num = [];

    for (int i = 0; i < str.length; i++) {
      if (_isNumeric(str[i])) {
        num.add(int.parse(str[i]));
      }
    }
    return num;
  }

  void display() {
    print("  Строка в список:" + num(incoming_string).toString());
  }
}
