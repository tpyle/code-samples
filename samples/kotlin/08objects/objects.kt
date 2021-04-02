import shapes.Rectangle;
import shapes.Square;
import shapes.Triangle;

fun main() {
    val rectangle = Rectangle(5.0, 2.0);
    val square = Square(5.0);
    val triangle = Triangle(4.0, 2.0);

    println(rectangle);
    println(square);
    println(triangle);
}