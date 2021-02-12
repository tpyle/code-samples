#include "square.h"


Square* createSquare(float side) {
    return createRectangle(side, side);
}

float squareArea(Square* s) {
    return rectangleArea(s);
}

float squarePerimeter(Square* s) {
    return rectanglePerimeter(s);
}

float deleteSquare(Square** s) {
    deleteRectangle(s);
    *s = NULL;
}