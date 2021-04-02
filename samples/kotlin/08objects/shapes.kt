package shapes;

fun importTest() {
    println("We cruising");
}

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

    override fun area(): Double {
        return this.height * this.width;
    }

    override fun perimeter(): Double {
        return this.height * 2 + this.width * 2;
    }
}

class Square(side: Double) : Rectangle(side, side);