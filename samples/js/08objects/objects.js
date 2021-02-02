class Shape {
    constructor() {}
    area() {}
    perimeter() {}
}

class Rectangle extends Shape {
    sideA = 0;
    sideB = 0;

    constructor(sideA, sideB) {
        this.sideA = sideA;
        this.sideB = sideB;
    }

    area() {
        return this.sideA * this.sideB;
    }

    perimeter() {
        return this.sideA * 2 + this.sideB * 2;
    }
}

class Square extends Rectangle {
    constructor(length) {
        super(length, length);
    }
}

