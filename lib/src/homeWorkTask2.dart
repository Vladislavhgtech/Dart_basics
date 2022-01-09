/* Реализуйте методы для преобразования целых чисел из десятичной системы 
в двоичную и обратно. */

class DecimalToBinary {
  int a;
  String b;

  DecimalToBinary(this.a, this.b);
  DecimalToBinary.undefined() : this(0, '0');
  DecimalToBinary.DeToBi(a, b) : this(a, b);

  String deToBi(int a) {
    return (a.toRadixString(2));
  }

  int biToDe(String b) {
    return (int.parse(b, radix: 2));
  }

  void display() {
    print("  Десятичное в двоичное:" +
        deToBi(a).toString() +
        "  Двоичное в десятичное:" +
        biToDe(b).toString());
  }
}
