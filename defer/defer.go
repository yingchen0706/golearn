package main

import "fmt"

type Vertex struct {
	x int
	y int
}

func main() {
	// f()
	// fmt.Println("Returned normally from f.")
	v := Vertex{1, 2}
	// p := &v
	// p.x = 1e9
	// fmt.Println(v.x)
	// primes := [6]int{2,3,5,7,11,13}
	// var s[]int = primes[1:4]
	// fmt.Println(s)
	mySlice := make([]int, 5)
	printSlice("a", mySlice)
	fmt.Printf("%v\n", v)
	fmt.Printf("%+v\n", v)

}

func printSlice(s string, x []int) {
	fmt.Printf("%s len=%d cap=%d %v\n", s, len(x), cap(x), x)
}

func f() {
	defer func() {
		if r:= recover(); r != nil {
			fmt.Println("Recovered in f", r)
		}
	}()
	fmt.Println("Calling g.")
	g(0)
	fmt.Println("Returned normally from g.")
}

func g(i int) {
	if i > 3 {
		fmt.Println("Panicking!")
		panic(fmt.Sprintf("%v", i))
	}
	defer fmt.Println("Defer in g", i)
	fmt.Println("Printing in g", i)
	g(i + 1)
}