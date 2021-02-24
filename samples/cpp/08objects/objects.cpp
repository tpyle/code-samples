#include <iostream>
#include <cmath>

class Shape {
    public:
        float area();
        float perimeter();
};

class Rectangle: public Shape {
    private:
        float width;
        float height;
    public:
        Rectangle(float height, float width) {
            this->width = width;
            this->height = height;
        }

        float area() {
            return this->width * this->height;
        }

        float perimeter() {
            return this->width * 2 + this->height * 2;
        }

        float getHeight() {
            return this->height;
        }

        float getWidth() {
            return this->width;
        }
};

class Square: public Rectangle {
    public:
        Square(float side) : Rectangle(side, side) {}

        float getSide() {
            return getHeight();
        }
};

class Triangle: public Rectangle {
    private:
        float hypotenuse;
    public:
        Triangle(float height, float width) : Rectangle(height, width) {
            this->hypotenuse = std::sqrt(height * height + width * width);
        }

        float area() {
            return Rectangle::area() / 2;
        }

        float perimeter() {
            return Rectangle::perimeter() / 2 + this->hypotenuse;
        }

        float getHypotenuse() {
            return this->hypotenuse;
        }
};

class Circle: public Shape {
    private:
        float radius;
    public:
        Circle(float radius) {
            this->radius = radius;
        }

        float area() {
            return M_PI * this->radius * this->radius;
        }

        float perimeter() {
            return 2 * M_PI * this->radius;
        }

        float getRadius() {
            return this->radius;
        }
};

class Trapezoid: public Shape {
    private:
        Triangle* triangle;
        Rectangle* rectangle;
    public:
        Trapezoid(Triangle &triangle, Rectangle &rectangle) {
            if (triangle.getHeight() != rectangle.getHeight()) {
                throw "Trapezoid Triangle and Rectangle heights must be the same";
            }
            this->triangle = &triangle;
            this->rectangle = &rectangle;
        }

        float area() {
            return this->rectangle->area() + this->triangle->area();
        }

        float perimeter() {
            return this->rectangle->perimeter() - this->rectangle->getHeight() +
                this->triangle->perimeter() - this->triangle->getHeight();
        }
};

int main() {
    Rectangle r(2, 5);
    Square s(5);
    Triangle t(2, 5);
    Circle c(5);
    Trapezoid p(t,r);

    std::cout << "[Rectangle] Area: " << r.area() << " Perimeter: " << r.perimeter() << std::endl;
    std::cout << "[Square]    Area: " << s.area() << " Perimeter: " << s.perimeter() << std::endl;
    std::cout << "[Triangle]  Area: " << t.area() << " Perimeter: " << t.perimeter() << std::endl;
    std::cout << "[Circle]    Area: " << c.area() << " Perimeter: " << c.perimeter() << std::endl;
    std::cout << "[Trapezoid] Area: " << p.area() << " Perimeter: " << p.perimeter() << std::endl;
}