package main;

import java.lang.Math;
import main.Shape;

public class Circle extends Shape {
    private double radius;

    public Circle(float radius) {
        this.radius = radius;
    }

    public double area() {
        System.out.println(this.getClass().getName());
        return Math.PI * this.radius * this.radius;
    }

    public double perimeter() {
        return 2.0 * Math.PI * this.radius;
    }
}
