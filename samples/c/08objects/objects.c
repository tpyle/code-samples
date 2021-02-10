#include <stdio.h>
#include <stdlib.h>
#include "rectangle.h"
#include "square.h"

int main() {
    Rectangle* r = createRectangle(5, 2);
    printf("P: %f, A: %f\n", rectanglePerimeter(r), rectangleArea(r));
    Square* s = createSquare(5);
    printf("P: %f, A: %f\n", squarePerimeter(s), squareArea(s));
}