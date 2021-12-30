// Задание №1. Функции НОД, НОК, разложение на простые множители

import 'dart:math';

class DelimetersCalculator {
  int a = 0;
  int b = 0;
  int n = 0;

  DelimetersCalculator(this.a, this.b, this.n);

  DelimetersCalculator.undefined() : this(0, 0, 0);

  DelimetersCalculator.factorize(n) : this(0, 0, n);

  DelimetersCalculator.nodNok(a, b) : this(a, b, 0);

  DelimetersCalculator.allCalc(a, b, n) : this(a, b, n);

  int NOD(int a, int b) {
    while (a != 0 && b != 0) {
      if (a > b) {
        a = a % b;
      } else {
        b = b % a;
      }
    }

    return a + b;
  }

  int NOK(int a, int b) {
    int i = min(a, b);

    do {
      if (i % a == 0 && i % b == 0) {
        break;
      } else
        i++;
    } while (true);

    return (i);
  }

  List<int> primfacs(n) {
    int i = 2;
    var primfac = <int>[];
    while (i * i <= n) {
      while (n % i == 0) {
        primfac.add(i);
        n = n / i;
      }
      i++;
    }
    if (n > 1) {
      primfac.add(n);
    }

    return primfac;
  }

  void display() {
    print("  НОД:" +
        NOD(a, b).toString() +
        "  НОК:" +
        NOK(a, b).toString() +
        "  Разложение на множители:" +
        primfacs(n).toString());
  }
}
