import shapes.Rectangle;
import shapes.Square;
import shapes.Triangle;
import shapes.Circle;
import shapes.Trapezoid;

fun main() {
    val rectangle = Rectangle(5.0, 2.0);
    val square = Square(5.0);
    val triangle = Triangle(4.0, 2.0);
    val circle = Circle(3.0);
    val trapezoid = Trapezoid(3.0, 5.0, 2.0);

    println(rectangle);
    println(square);
    println(triangle);
    println(circle);
    println(trapezoid);
}