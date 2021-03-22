package main;

import main.Shape;

public class Rectangle extends Shape {
    private double height;
    private double width;

    public Rectangle(double width, double height) {
        this.height = height;
        this.width = width;
    }

    public double perimeter() {
        return this.height * 2 + this.width * 2;
    }

    public double area() {
        return this.height * this.width;
    }
}
