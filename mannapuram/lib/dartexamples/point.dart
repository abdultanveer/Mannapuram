import 'dart:math';

class Point {
  static double origin = 0.00;
  double x, y;
  Point(this.x, this.y);

   static double distanceBetween(Point a, Point b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
  }
}

void main() {
  Point a = Point(2, 2);
  Point b = Point(4, 4);
  Point instancePoint = Point(10, 20);
  var distance = Point.distanceBetween(a, b);
  assert(2.8 < distance && distance < 2.9);
  print(distance);
}