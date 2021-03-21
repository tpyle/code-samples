package square

import (
	"fmt"
	"main/rectangle"
)

type Square struct {
	rectangle rectangle.Rectangle
}

func New(side float64) Square {
	return Square{
		rectangle: rectangle.New(side, side),
	}
}

func Area(s Square) float64 {
	return rectangle.Area(s.rectangle)
}

func Perimeter(s Square) float64 {
	return rectangle.Perimeter(s.rectangle)
}

func GetSide(s Square) float64 {
	return rectangle.GetHeight(s.rectangle)
}

func Print(s Square) {
	fmt.Printf("[Square] Area: %f Perimeter %f\n",
		Area(s),
		Perimeter(s))
}
