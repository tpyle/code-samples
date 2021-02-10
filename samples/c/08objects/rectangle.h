#ifndef RECTANGLE_H
#define RECTANGLE_H

typedef struct rectangle {
    float width;
    float height;
} Rectangle;

Rectangle* createRectangle(float width, float height);

float rectangleArea(Rectangle* r);

float rectanglePerimeter(Rectangle* r);

float deleteRectangle(Rectangle* r);

#endif