package main

import (
	"main/circle"
	"main/rectangle"
	"main/square"
	"main/trapezoid"
	"main/triangle"
)

func main() {
	r := rectangle.New(5, 2)
	rectangle.Print(r)
	s := square.New(5)
	square.Print(s)
	c := circle.New(3)
	circle.Print(c)
	t := triangle.New(5, 2)
	triangle.Print(t)
	p := trapezoid.New(5, 2, 3)
	trapezoid.Print(p)
}
