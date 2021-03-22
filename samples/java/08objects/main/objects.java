package main;

import main.Rectangle;

public class objects {
    public static void main(String[] args) {
        Rectangle r = new Rectangle(5, 2);
        System.out.printf("[Rectangle] Area: %f Perimeter: %f\n", r.area(), r.perimeter());
    }
}