import "dart:io";

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

void main() {
    Shape r = Rectangle(5, 2);
    print("[Rectange] A: ${r.area()} P: ${r.perimeter()}");
    Shape s = Square(4);
    print("[Square]   A: ${s.area()} P: ${s.perimeter()}");
}