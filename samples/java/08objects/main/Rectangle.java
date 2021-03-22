package main;

import main.Shape;

public class Rectangle extends Shape {
    private float height;
    private float width;

    public Rectangle(float width, float height) {
        this.height = height;
        this.width = width;
    }

    public float perimeter() {
        return this.height * 2 + this.width * 2;
    }

    public float area() {
        return this.height * this.width;
    }
}
