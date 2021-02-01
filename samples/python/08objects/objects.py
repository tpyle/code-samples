import math

class Shape:
    def __init__(self):
        pass

    def area(self):
        pass

    def perimeter(self):
        pass


# For the purposes of this:
#  _______________
#  |              | side A
#  |______________|
#         side B
class Rectangle(Shape):
    side_a = 0
    side_b = 0

    def __init__(self, side_a, side_b):
        self.side_a = side_a
        self.side_b = side_b

    def area(self):
        return self.side_a * self.side_b

    def perimeter(self):
        return self.side_a * 2 + self.side_b * 2

class Sqaure(Rectangle):
    def __init__(self, side):
        super().__init__(side, side)

#  A Rigth triangle as follows
#
#   |\
# A | \
#   |__\
#     B
class Triangle(Shape):
    side_a = 0
    side_b = 0
    side_c = 0

    def __init__(self, side_a, side_b):
        self.side_a = side_a
        self.side_b = side_b
        self.side_c = math.sqrt(side_a ** 2 + side_b ** 2)

    def area(self):
        return (0.5) * self.side_a * self.side_b

    def perimeter(self):
        return self.side_a + self.side_b + self.side_c

#  For The  purposes fo this:
#   ______________
#  |              |\
#  |______________|_\
#  (they follow the same shape described for rectangle and triangle)
class Trapezoid(Shape):
    rectangle_part = None
    triangle_part = None
    def __init__(self, rectangle_part, triangle_part):
        if rectangle_part.side_a != triangle_part.side_a:
            raise Exception('Rectangle and Triangle Sides do not match up')
        self.rectangle_part = rectangle_part
        self.triangle_part = triangle_part
    
    def area(self):
        return self.rectangle_part.area() + \
            self.triangle_part.area()

    def perimeter(self):
        return self.rectangle_part.perimeter() - self.rectangle_part.side_a + \
            self.triangle_part.perimeter() - self.triangle_part.side_a


r = Rectangle(2, 5)

s = Sqaure(2)

t = Triangle(2, 2)

tr = Trapezoid(r, t)

print(r.area(), r.perimeter())

print(s.area(), s.perimeter())

print(t.area(), t.perimeter())

print(tr.area(), tr.perimeter())