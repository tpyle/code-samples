#ifndef TRAPEZOID_H
#define TRAPEZOID_H

#include <stdlib.h>
#include "rectangle.h"
#include "triangle.h"

typedef struct trapezoid {
    Rectangle* rectanglePart;
    Triangle* trianglePart;
} Trapezoid;

Trapezoid* createTrapezoid(Rectangle* r, Triangle* t);

float trapezoidArea(Trapezoid* p);

float trapezoidPerimeter(Trapezoid* p);

float deleteTrapezoid(Trapezoid** p);

#endif