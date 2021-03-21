package rectangle

import (
	"fmt"
)

type Rectangle struct {
	width  float64
	height float64
}

func New(width float64, height float64) Rectangle {
	return Rectangle{
		width:  width,
		height: height,
	}
}

func Area(r Rectangle) float64 {
	return r.width * r.height
}

func Perimeter(r Rectangle) float64 {
	return 2*r.width + 2*r.height
}

func GetHeight(r Rectangle) float64 {
	return r.height
}

func GetWidth(r Rectangle) float64 {
	return r.width
}

func Print(r Rectangle) {
	fmt.Printf("[Rectangle] Area: %f Perimeter %f\n",
		Area(r),
		Perimeter(r))
}
