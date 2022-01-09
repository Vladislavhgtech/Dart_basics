/* Есть коллекция слов. Реализуйте метод, возвращающий Map.
 Данный Map должен соотносить слово и количество его вхождений в данную коллекцию. */

class ListToMap {
  List<String> list = [];

  ListToMap(this.list);
  ListToMap.undefined() : this([]);

  listToMap(List<String> list) {
    int count = 0;
    final map = <String, int>{};
    var set = list.toSet();
    for (var s in set) {
      for (int i = 0; i < list.length; i++) {
        if (s == list[i]) {
          count++;
        }
      }
      map[s] = count;
      count = 0;
    }
    return map;
  }

  void display() {
    print("  Список в Мапу:" + listToMap(list).toString());
  }
}
