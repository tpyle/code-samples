package circle

import (
	"fmt"
	"math"
)

type Circle struct {
	radius float64
}

func New(radius float64) Circle {
	return Circle{
		radius: radius,
	}
}

func Area(c Circle) float64 {
	return math.Pi * c.radius * c.radius
}

func Perimeter(c Circle) float64 {
	return 2 * math.Pi * c.radius
}

func GetRadius(c Circle) float64 {
	return c.radius
}

func Print(c Circle) {
	fmt.Printf("[Circle] Area: %f Perimeter: %f\n",
		Area(c),
		Perimeter(c))
}
