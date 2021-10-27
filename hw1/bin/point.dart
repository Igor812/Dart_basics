import 'dart:core';

import 'dart:math';


class Point{
  int? xCoord;
  int? yCoord;
  int? zCoord;
  int? endPointX;
  int? endPointY;
  int? endPointZ;

  Point(){
    xCoord = 5;
    yCoord = 5;
    zCoord = 5;
  }

  void entryPoint(int x, int y, int z) {
    endPointX = x;
    endPointY = y;
    endPointZ = z;
  }

  distanceTo(Point another){
    print(sqrt(xCoord!*another.endPointX!+yCoord!*another.yCoord!+zCoord!*another.zCoord!));
  }

  areaTriangle(Point one, Point two, Point three) {
    // Формула Герона для вычисления площади треугольника.
    // Сначала необходимо подсчитать разность полупериметра и каждой его стороны.
    // Потом найти произведение полученных чисел, умножить результат на полупериметр и найти корень из полученного числа.
    //
    // S = √ p * (p − a) * (p − b) * (p − c), где a, b, c — стороны, p — полупериметр, который можно найти по формуле: p = (a + b + c) : 2
  }
}