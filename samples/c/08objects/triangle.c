#include "triangle.h"

Triangle* createTriangle(float width, float height) {
    Triangle* t = malloc(sizeof(Triangle));
    t->rectangle = createRectangle(width, height);
    t->hypotenuse = sqrt(width * width + height * height);
    return t;
}

float triangleArea(Triangle* t) {
    return rectangleArea(t->rectangle)/2;
}

float trianglePerimeter(Triangle* t) {
    return rectanglePerimeter(t->rectangle)/2 + t->hypotenuse;
}

float deleteTriangle(Triangle* t) {
    deleteRectangle(t->rectangle);
    free(t);
}