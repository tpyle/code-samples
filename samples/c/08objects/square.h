#ifndef SQUARE_H
#define SQUARE_H

#include <stdlib.h>
#include "rectangle.h"

typedef Rectangle Square;

Square* createSquare(float side);

float squareArea(Square* s);

float squarePerimeter(Square* s);

float deleteSquare(Square** s);

#endif