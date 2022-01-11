/*Реализуйте метод, который вычисляет корень любой заданной степени из числа.
 Реализуйте данный метод как extension-метод для num. 
 Алгоритм можете взять на википедии как «Алгоритм нахождения корня n-й степени».
Запрещается использовать методы math. В случае когда значение вернуть невозможно, 
необходимо бросать исключение с описанием ошибки.*/

extension rootCalc on RootCalculations {
  void RC(double num, int rootDegree) {
    while (mabs(root - nextRoot) > eps) {
      nextRoot = (1 / rootDegree) *
          ((rootDegree - 1) * root + num / pow(root, rootDegree - 1));
      rootCount = root;
      root = nextRoot;
      nextRoot = rootCount;
      countiter++;
    }
    print("root = " + root.toString());
    print("Число итераций =" + countiter.toString());
  }
}

class RootCalculations {
  double? num;
  int? rootDegree;
  double eps = 0.00001; //допустимая погрешность
  double root = 0; //начальное приближение корня
  int countiter = 0; //число итераций
  double nextRoot = 0; //следующее приближение
  double rootCount = 0; //вспомогательная переменная

  RootCalculations(double num, int rootDegree) {
    this.num = num;
    this.rootDegree = rootDegree;
    this.root = num / rootDegree;
  }

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
