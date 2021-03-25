package main;

import main.Rectangle;
import main.Triangle;

public class Trapezoid extends Rectangle {
    private Triangle triangle;

    public Trapezoid(double totalWidth, double height, double triangleWidth) {
        super(totalWidth, height);
        this.triangle = new Triangle(triangleWidth, height);
    }

    public double area() {
        return super.area() - this.triangle.area();
    }

    public double perimeter() {
        return super.perimeter() - super.getHeight() - this.triangle.getWidth() + this.triangle.getHypotenuse();
    }
}