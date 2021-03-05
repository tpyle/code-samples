import "dart:math";

abstract class Shape {
    double area();
    double perimeter();
}

class Rectangle extends Shape {
    double height;
    double width;

    Rectangle(this.height, this.width);

    double area() {
        return this.width * this.height;
    }

    double perimeter() {
        return this.width * 2 + this.height * 2;
    }

    double getWidth() {
        return this.width;
    }

    double getHeight() {
        return this.height;
    }
}

class Square extends Rectangle {
    Square(double side) : super(side, side);

    double getSide() {
        return this.height;
    }
}

class Triangle extends Rectangle {
    double hypotenuse;

    Triangle(double height, double width) : super(height, width) {
        this.hypotenuse = sqrt(height * height + width * width);
    }

    double area() {
        return super.area() / 2;
    }

    double perimeter() {
        return super.perimeter() / 2 + this.hypotenuse;
    }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  double area() {
    return pi * this.radius * this.radius;
  }

  double perimeter() {
    return 2 * pi * this.radius;
  }
}

void main() {
    Shape r = Rectangle(5, 2);
    print("[Rectange] A: ${r.area()} P: ${r.perimeter()}");
    Shape s = Square(4);
    print("[Square]   A: ${s.area()} P: ${s.perimeter()}");
    Triangle t = Triangle(4, 2);
    print("[Triangle] A: ${t.area()} P: ${t.perimeter()}");
    Circle c = Circle(3);
    print("[Circle]   A: ${c.area()} P: ${c.perimeter()}");
}