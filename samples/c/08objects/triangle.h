#ifndef TRIANGLE_H
#define TRIANGLE_H

#include <math.h>
#include <stdlib.h>
#include "rectangle.h"

typedef struct triangle {
    Rectangle* rectangle;
    float hypotenuse;
} Triangle;

Triangle* createTriangle(float width, float height);

float triangleArea(Triangle* t);

float trianglePerimeter(Triangle* t);

float deleteTriangle(Triangle** t);

#endif