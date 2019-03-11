package main

import "fmt"

func main() {
	var n [10]int
	var i, j int
	for i = 0; i < 10; i++ {
		n[i] = i + 100
	}

	for j = 0; j < 10; j++ {
		fmt.Printf("Element[%d] = %d\n", j, n[j])
	}

	slice1 := n[0:5]
	for j = 0; j < 5; j++ {
		fmt.Printf("Element[%d] = %d\n", j, slice1[j])
	}

	nums := []int{2,3,4}
	sum := 0
	for _, num := range nums {
		sum += num
	}
	fmt.Printf("Sum: %d", sum)

	for i, num := range nums {
		if num == 3 {
			fmt.Println("index: ", i)
		}
	}

	kvs := map[string]string{"a": "apple", "b": "banana"}
	for k,v := range kvs {
		fmt.Printf("%s -> %s \n", k, v)
	}

	for i, c := range "go" {
		fmt.Println(i, c)
	}
}