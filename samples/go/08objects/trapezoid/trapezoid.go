package trapezoid

import (
	"fmt"
	"main/rectangle"
	"main/triangle"
)

type Trapezoid struct {
	totalRectangle rectangle.Rectangle
	trianglePart   triangle.Triangle
}

func New(totalWidth float64, triangleWidth float64, height float64) Trapezoid {
	return Trapezoid{
		totalRectangle: rectangle.New(totalWidth, height),
		trianglePart:   triangle.New(triangleWidth, height),
	}
}

func Area(t Trapezoid) float64 {
	return rectangle.Area(t.totalRectangle) - triangle.Area(t.trianglePart)
}

func Perimeter(t Trapezoid) float64 {
	return rectangle.Perimeter(t.totalRectangle) - rectangle.GetHeight(t.totalRectangle) + triangle.Perimeter(t.trianglePart) - triangle.GetHeight(t.trianglePart)
}

func Print(t Trapezoid) {
	fmt.Printf("[Trapezoid] Area: %f Perimeter %f\n",
		Area(t),
		Perimeter(t))
}
