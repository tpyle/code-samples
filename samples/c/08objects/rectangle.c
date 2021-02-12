#include <stdlib.h>
#include "rectangle.h"


Rectangle* createRectangle(float width, float height) {
    Rectangle* this = malloc(sizeof(Rectangle));
    this->width = width;
    this->height = height;
}

float rectangleArea(Rectangle* r) {
    return r->width * r->height;
}

float rectanglePerimeter(Rectangle* r) {
    return r->width * 2 + r->height * 2;
}

float deleteRectangle(Rectangle** r) {
    free(*r);
    *r = NULL;
}