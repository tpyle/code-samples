package square

import (
	"fmt"
	"main/rectangle"
)

type Square struct {
	r rectangle.Rectangle
}

func New(side float64) Square {
	return Square{
		r: rectangle.New(side, side),
	}
}

func Area(s Square) float64 {
	return rectangle.Area(s.r)
}

func Perimeter(s Square) float64 {
	return rectangle.Perimeter(s.r)
}

func GetSide(s Square) float64 {
	return rectangle.GetHeight(s.r)
}

func Print(s Square) {
	fmt.Printf("[Square] Area: %f Perimeter %f\n",
		Area(s),
		Perimeter(s))
}
