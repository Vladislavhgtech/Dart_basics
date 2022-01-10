/*Реализуйте класс Point, который описывает точку в трёхмерном пространстве. 
У данного класса реализуйте метод distanceTo(Point another), 
который возвращает расстояние от данной точки до точки в параметре. 
По желанию можете реализовать метод, принимающий три точки в трёхмерном пространстве 
и возвращающий площадь треугольника, который образуют данные точки. 
Реализуйте factory-конструкторы для данного класса, возвращающие начало координат, 
и ещё несколько на своё усмотрение (например, конструктор, возвращающий точку с координатами [1,1,1], 
которая определяет единичный вектор).*/
import 'dart:math' as math;

class Point {
  int x, y, z;

  Point(this.x, this.y, this.z);

  factory Point.zero(int zero) {
    if (zero == 0) return Point(0, 0, 0);
    if (zero == 1)
      return Point(1, 1, 1);
    else {
      throw 'Не хватает координат';
    }
  }

  double distanceTo(Point another) {
    double dist = math.pow(this.x - another.x, 2) +
        math.pow(this.y - another.y, 2) +
        math.pow(this.z - another.z, 2) as double;

    return math.sqrt(dist);
  }
}
