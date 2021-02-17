#include "trapezoid.h"

Trapezoid* createTrapezoid(Rectangle* r, Triangle* t) {
    if (r->height != t->rectangle->height) {
        return NULL;
    }
    Trapezoid* p = malloc(sizeof(Trapezoid));
    p->rectanglePart = r;
    p->trianglePart = t;
    return p;
}

float trapezoidArea(Trapezoid* p) {
    return rectangleArea(p->rectanglePart) +
        triangleArea(p->trianglePart);
}

float trapezoidPerimeter(Trapezoid* p) {
    return rectanglePerimeter(p->rectanglePart) - p->rectanglePart->height
        + trianglePerimeter(p->trianglePart) - p->trianglePart->rectangle->height;
}

float deleteTrapezoid(Trapezoid** p) {
    (*p)->rectanglePart = NULL;
    (*p)->trianglePart = NULL;
    free(*p);
    *p = NULL;
}