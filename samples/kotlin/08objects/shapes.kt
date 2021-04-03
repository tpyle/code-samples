package shapes;

import kotlin.math.sqrt
import kotlin.math.PI

abstract class Shape {
    abstract fun area(): Double;
    abstract fun perimeter(): Double;
    override fun toString(): String {
        return String.format("[%s]\n\tArea: %f\n\tPerimeter: %f", this.javaClass.simpleName, area(), perimeter());
    }
}

open class Rectangle(height: Double, width: Double) : Shape() {
    val height = height;
    val width = width;

    override open fun area(): Double {
        return this.height * this.width;
    }

    override open fun perimeter(): Double {
        return this.height * 2 + this.width * 2;
    }
}

class Square(side: Double) : Rectangle(side, side);

class Triangle(height: Double, width: Double): Rectangle(height, width) {
    val hypotenuse = sqrt(this.height * this.height + this.width * this.width);

    override fun area(): Double {
        return super.area() / 2;
    }

    override fun perimeter(): Double {
        return super.perimeter() / 2 + this.hypotenuse;
    }
}

class Circle(radius: Double): Shape() {
    val radius = radius;

    override fun area(): Double {
        return PI * this.radius * this.radius;
    }

    override fun perimeter(): Double {
        return 2 * PI * this.radius;
    }
}