package main;

public abstract class Shape {
    public abstract double area();
    public abstract double perimeter();

    public String toString() {
        return String.format(
            "[%s]\n  Area: %f\n  Perimeter: %f",
            this.getClass().getSimpleName(),
            this.area(),
            this.perimeter()
        );
    }
}
