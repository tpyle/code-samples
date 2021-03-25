package main;

import main.Rectangle;

public class Square extends Rectangle {

    public Square(double side) {
        super(side, side);
    }

    public double getSide() {
        return this.getHeight();
    }
}
