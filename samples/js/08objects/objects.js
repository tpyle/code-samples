'use strict';

class Shape {
    constructor() {
    }
    area() {}
    perimeter() {}
}

class Rectangle extends Shape {
    sideA = 0;
    sideB = 0;

    constructor(sideA, sideB) {
        super()
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

class Triangle extends Shape {
    sideA = 0;
    sideB = 0;
    sideC = 0;

    constructor(sideA, sideB) {
        super();
        this.sideA = sideA;
        this.sideB = sideB;
        this.sideC = Math.sqrt(this.sideA*this.sideA + this.sideB * this.sideB);
    }

    area() {
        return this.sideA * this.sideB * 0.5;
    }

    perimeter() {
        return this.sideA + this.sideB + this.sideC;
    }
}

class Trapezoid extends Shape {
    rectanglePart = null;
    trianglePart = null;

    constructor(rectanglePart, trianglePart) {
        if (rectanglePart.sideA != trianglePart.sideA) {
            throw Error('Rectangle And Triangle must have the same length sideA');
        }
        super();
        this.rectanglePart = rectanglePart;
        this.trianglePart = trianglePart;
    }

    area() {
        return this.rectanglePart.area() +
            this.trianglePart.area();
    }

    perimeter() {
        return this.rectanglePart.perimeter() - this.rectanglePart.sideA +
            this.trianglePart.perimeter() - this.trianglePart.sideA;
    }
}

const r = new Rectangle(2, 5);
const s = new Square(4);
const t = new Triangle(2, 5);
const tz = new Trapezoid(r, t);

console.log(r.area(), r.perimeter());
console.log(s.area(), s.perimeter());
console.log(t.area(), t.perimeter());
console.log(tz.area(), tz.perimeter());