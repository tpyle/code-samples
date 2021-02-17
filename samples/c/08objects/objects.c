#include <stdio.h>
#include <stdlib.h>
#include "rectangle.h"
#include "square.h"
#include "triangle.h"
#include "trapezoid.h"

int main() {
    Rectangle* r = createRectangle(5, 2);
    printf("P: %f, A: %f\n", rectanglePerimeter(r), rectangleArea(r));
    Square* s = createSquare(5);
    printf("P: %f, A: %f\n", squarePerimeter(s), squareArea(s));
    Triangle* t = createTriangle(5, 2);
    printf("P: %f, A: %f\n", trianglePerimeter(t), triangleArea(t));
    Trapezoid* p = createTrapezoid(r, t);
    printf("P: %f, A: %f\n", trapezoidPerimeter(p), trapezoidArea(p));
    
    deleteTrapezoid(&p);
    deleteRectangle(&r);
    deleteSquare(&s);
    deleteTriangle(&t);
}