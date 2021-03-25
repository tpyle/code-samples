package main;

import main.Rectangle;
import main.Circle;
import main.Square;
import main.Triangle;

public class objects {
    public static void main(String[] args) {
        Rectangle r = new Rectangle(5, 2);
        System.out.println(r);
        Circle c = new Circle(4);
        System.out.println(c);
        Square q = new Square(5);
        System.out.println(q);
        Triangle t = new Triangle(4, 2);
        System.out.println(t);
        Trapezoid p = new Trapezoid(6, 4, 2);
        System.out.println(p);
    }
}