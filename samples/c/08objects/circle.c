#include <stdlib.h>
#include "circle.h"


Circle* createCircle(float radius) {
    Circle* this = malloc(sizeof(Circle));
    this->radius = radius;
}

float circleArea(Circle* c) {
    return M_PI * c->radius * c->radius;
}

float circlePerimeter(Circle* c) {
    return 2 * M_PI * c->radius;
}

float deleteCircle(Circle** c) {
    free(*c);
    *c = NULL;
}