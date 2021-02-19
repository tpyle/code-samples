'use strict';

class Shape {
    constructor() {
    }
    area() {}
    perimeter() {}
}

class Circle extends Shape {
    radius = 0;

    constructor(radius) {
        super();
        this.radius = radius;
    }

    area() {
        return Math.PI * this.radius * this.radius;
    }

    perimeter() {
        return 2 * Math.PI * this.radius;
    }
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
const c = new Circle(4);

console.log('Radius', r.area(), r.perimeter());
console.log('Square', s.area(), s.perimeter());
console.log('Triangle', t.area(), t.perimeter());
console.log('Trapezoid', tz.area(), tz.perimeter());
console.log('Circle', c.area(), c.perimeter());