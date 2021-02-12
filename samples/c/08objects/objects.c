#include <stdio.h>
#include <stdlib.h>
#include "rectangle.h"
#include "square.h"
#include "triangle.h"

int main() {
    Rectangle* r = createRectangle(5, 2);
    printf("P: %f, A: %f\n", rectanglePerimeter(r), rectangleArea(r));
    Square* s = createSquare(5);
    printf("P: %f, A: %f\n", squarePerimeter(s), squareArea(s));
    Triangle* t = createTriangle(5, 2);
    printf("P: %f, A: %f\n", trianglePerimeter(t), triangleArea(t));
    printf("%p %p %p\n", r, s, t);
    deleteRectangle(&r);
    printf("r\n");
    deleteSquare(&s);
    printf("s\n");
    deleteTriangle(&t);
    printf("t\n");
    printf("%p %p %p\n", r, s, t);
}