#ifndef CIRCLE_H
#define CIRCLE_H

#include "math.h"

typedef struct circle {
    float radius;
} Circle;

Circle* createCircle(float radius);

float circleArea(Circle* c);

float circlePerimeter(Circle* c);

float deleteCircle(Circle** c);

#endif