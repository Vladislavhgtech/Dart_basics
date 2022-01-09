/* Есть коллекция строк вида ‘one, two, three, cat, dog’ или любого другого. 
Реализуйте метод, возвращающий цифры без повторений, которые встречаются в данной строке. 
Однако цифры встречаются в виде английских слов от zero до nine. 
Например, в результате строки ‘one, two, zero, zero’ мы получим следующий результат: [1, 2, 0]. 
Если в строке есть слова, не являющиеся цифрами от 0 до 9, пропускайте их. */

class WordToNumber {
  List<String> list = [];

  WordToNumber(this.list);
  WordToNumber.undefined() : this([]);

  List<int?> wordToNumber(List<String> list) {
    List<int?> newList = [];

    final map = <String, int>{
      'zero': 0,
      'one': 1,
      'two': 2,
      'three': 3,
      'four': 4,
      'five': 5,
      'six': 6,
      'seven': 7,
      'eight': 8,
      'nine': 9
    };

    for (int i = 0; i < list.length; i++) {
      if (map.containsKey(list[i])) {
        newList.add(map[list[i]]);
      }
      ;
    }
    ;
    return newList;
  }

  void display() {
    print("  Слова в Цифры:" + wordToNumber(list).toString());
  }
}
