package main

import (
	"fmt"
	"github.com/yingchen0706/golearn/hash"
)

func main() {
	//var a, b struct{}
	//fmt.Println(&a == &b) // true
	//fmt.Printf("%p\n", &a)
	//fmt.Printf("%p\n",&b)

	list := hashtest.GetApplicationList()
	resMap := make(map[uint32]int)

	fmt.Println(len(list))

	for _, item := range list {
		//item = item + "E0CCB884-B9CD-4D3A-8F98-233623CD8D12"
		resMap[hashtest.HashByMurMur3_32([]byte(item))] = 1
	}
	fmt.Println(len(resMap))

	resMap2 := make(map[string]int)

	for _, item2 := range list {
		//item2 = item2 + "E0CCB884-B9CD-4D3A-8F98-233623CD8D12"
		key := hashtest.HashBySHA256(string([]byte(item2)))
		resMap2[string(key[:])] = 1
	}
	fmt.Println(len(resMap2))
}