using System;

namespace Objects {
    interface Shape {
        float area();
        float perimeter(); 
    }

    class Rectangle : Shape {
        float height;
        float width;

        public Rectangle(float height, float width) {
            this.height = height;
            this.width = width;
        }

        public float area() {
            return this.height * this.width;
        }

        public float perimeter() {
            return this.height * 2 + this.width * 2;
        }

        public float getHeight() {
            return this.height;
        }

        public float getWidth() {
            return this.width;
        }
    }

    class Square : Rectangle {
        public Square(float side) : base(side, side) {}

        public float getSide() {
            return this.getHeight();
        }
    }

    class Triangle : Rectangle {
        float hypotenuse;

        public Triangle(float height, float width) : base(height, width) {
            this.hypotenuse = (float)Math.Sqrt(height * height + width * width);
        }

        public new float area() {
            return base.area() / 2;
        }

        public new float perimeter() {
            return base.perimeter() / 2 + this.hypotenuse;
        }

        public float getHypotenuse() {
            return this.hypotenuse;
        }
    }

    class Circle : Shape {
        float radius;

        public Circle(float radius) {
            this.radius = radius;
        }

        public float area() {
            return (float)Math.PI * this.radius * this.radius;
        }

        public float perimeter() {
            return 2 * (float)Math.PI * this.radius;
        }

        public float getRadius()  {
            return this.radius;
        }
    }

    class Trapezoid : Rectangle {
        Triangle triangle;

        public Trapezoid(float height, float totalWidth, float triangleWidth): base(height, totalWidth) {
            this.triangle = new Triangle(height, triangleWidth);
        }

        public new float area() {
            return base.area() - this.triangle.area();
        }

        public new float perimeter() {
            return base.perimeter() - base.getHeight() - this.triangle.getWidth() + this.triangle.getHypotenuse();
        }
    }

    class Exec {
        static void Main(string[] args) {
            Rectangle r = new Rectangle(5, 2);
            Console.WriteLine("[Rectangle] A: {0}, P: {1}", r.area(), r.perimeter());
            Square s = new Square(4);
            Console.WriteLine("[Square]    A: {0}, P: {1}", s.area(), s.perimeter());
            Triangle t = new Triangle(3, 2);
            Console.WriteLine("[Triangle]  A: {0}, P: {1}", t.area(), t.perimeter());
            Circle c = new Circle(4);
            Console.WriteLine("[Circle]    A: {0}, P: {1}", c.area(), c.perimeter());
            Trapezoid p = new Trapezoid(2, 5, 2);
            Console.WriteLine("[Trapezoid] A: {0}, P: {1}", p.area(), p.perimeter());
        }
    }
}