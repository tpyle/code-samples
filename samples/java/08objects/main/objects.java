package main;

import main.Rectangle;
import main.Circle;

public class objects {
    public static void main(String[] args) {
        Rectangle r = new Rectangle(5, 2);
        System.out.printf("[Rectangle] Area: %f Perimeter: %f\n", r.area(), r.perimeter());
        Circle c = new Circle(4);
        System.out.printf("[Circle]    Area: %f Perimeter: %f\n", c.area(), c.perimeter());
    }
}