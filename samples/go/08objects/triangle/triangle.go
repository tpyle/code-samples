package triangle

import (
	"fmt"
	"main/rectangle"
	"math"
)

type Triangle struct {
	rectangle  rectangle.Rectangle
	hypotenuse float64
}

func New(width float64, height float64) Triangle {
	return Triangle{
		rectangle:  rectangle.New(width, height),
		hypotenuse: math.Sqrt(width*width + height*height),
	}
}

func Area(t Triangle) float64 {
	return rectangle.Area(t.rectangle) / 2
}

func Perimeter(t Triangle) float64 {
	return rectangle.Perimeter(t.rectangle)/2 + t.hypotenuse
}

func GetHeight(t Triangle) float64 {
	return rectangle.GetHeight(t.rectangle)
}

func GetWidth(t Triangle) float64 {
	return rectangle.GetWidth(t.rectangle)
}

func GetHypotenuse(t Triangle) float64 {
	return t.hypotenuse
}

func Print(t Triangle) {
	fmt.Printf("[Triangle] Area: %f Perimeter: %f\n",
		Area(t),
		Perimeter(t))
}
