package main

import (
	"fmt"
	"math"
)

type Abser interface {
	Abs() int
}

type MyType struct {
	X, Y int
}

func (t MyType) Abs() int {
	return int(math.Sqrt(float64(t.X*t.X + t.Y*t.Y)))
}

func main() {
	var it Abser
	it = MyType{3,4}
	fmt.Println(it.Abs())
}
