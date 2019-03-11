package main

import "fmt"

func main() {
	/*const LENGTH int = 10
	const WIDTH int = 5
	var area int
	const a, b, c = 1, false, "str"

	area = LENGTH * WIDTH
	fmt.Printf("面积为： %d", area)
	println()
	println(a, b, c)

	const (
		Unknown = 0
		Femail
		Male
	)
	println(Unknown)
	println(Femail)*/

	const (
		/*a = iota
		b
		c
		d = "ha"
		e*/
		f = 100
		g
		h = iota
		i
	)
	fmt.Println(f,g,h,i)
	//fmt.Println(a,b,c,d,e,f,g,h,i)
}