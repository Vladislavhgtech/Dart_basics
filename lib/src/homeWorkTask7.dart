/*Реализуйте метод, который вычисляет корень любой заданной степени из числа.
 Реализуйте данный метод как extension-метод для num. 
 Алгоритм можете взять на википедии как «Алгоритм нахождения корня n-й степени».
Запрещается использовать методы math. В случае когда значение вернуть невозможно, 
необходимо бросать исключение с описанием ошибки.*/

extension rootCalc on RootCalculations {
  double RC(double num, int rootDegree) {
    try {
      int countiter = 0; //число итераций
      double nextRoot = 0; //следующее приближение
      double rootCount = 0; //вспомогательная переменная
      double eps = 0.00001;
      double root = num / rootDegree;

      while (mabs(root - nextRoot) > eps) {
        nextRoot = (1 / rootDegree) *
            ((rootDegree - 1) * root + num / pow(root, rootDegree - 1));
        rootCount = root;
        root = nextRoot;
        nextRoot = rootCount;
        countiter++;
      }
      return root;
    } catch (e) {
      throw ArgumentError();
    }
    ;
  }
}

class RootCalculations {
  //допустимая погрешность

  RootCalculations();

  double mabs(double x) {
    return (x < 0) ? -x : x;
  }

  double pow(double x, int power) {
    double result;
    result = 1.0;
    for (int i = 1; i <= power; i++) {
      result = result * x;
    }
    return (result);
  }
}
