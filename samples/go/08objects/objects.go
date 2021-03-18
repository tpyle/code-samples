package main

import "main/rectangle"
import "main/square"
import "main/circle"

func main() {
	r := rectangle.New(5, 2);
	rectangle.Print(r);
	s := square.New(5);
	square.Print(s);
	c := circle.New(3);
	circle.Print(c);
}