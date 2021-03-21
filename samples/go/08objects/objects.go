package main

import "main/rectangle"
import "main/square"
import "main/circle"
import "main/triangle"

func main() {
	r := rectangle.New(5, 2);
	rectangle.Print(r);
	s := square.New(5);
	square.Print(s);
	c := circle.New(3);
	circle.Print(c);
	t := triangle.New(5, 2);
	triangle.Print(t);
}