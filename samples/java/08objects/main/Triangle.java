package main;

import java.lang.Math;
import main.Rectangle;

public class Triangle extends Rectangle {
    private double hypotenuse;

    public Triangle(double width, double height) {
        super(width, height);
        this.hypotenuse = Math.sqrt(width * width + height * height);
    }

    public double perimeter() {
        return super.perimeter() / 2 + this.hypotenuse;
    }

    public double area() {
        return super.area() / 2;
    }

    public double getHypotenuse() {
        return this.hypotenuse;
    }
}
