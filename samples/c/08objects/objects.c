#include <stdio.h>
#include <stdlib.h>
#include "rectangle.h"

int main() {
    Rectangle* r = createRectangle(5, 2);
    printf("P: %f, A: %f\n", rectanglePerimeter(r), rectangleArea(r));
}