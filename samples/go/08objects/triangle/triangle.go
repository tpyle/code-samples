package triangle

import (
	"fmt"
	"math"
	"main/rectangle"
)

type Triangle struct {
	rectangle rectangle.Rectangle
	hypotenuse float64
}

func New(width float64, height float64) Triangle {
	return Triangle {
		rectangle: rectangle.New(width, height),
		hypotenuse: math.Sqrt(width * width + height * height),
	}
}

func Area(t Triangle) float64 {
	return rectangle.Area(t.rectangle) / 2;
}

func Perimeter(t Triangle) float64 {
	return rectangle.Perimeter(t.rectangle) / 2 + t.hypotenuse;
}

func Print(t Triangle) {
	fmt.Printf("[Triangle] Area: %f Perimeter: %f\n",
		Area(t),
		Perimeter(t));
}