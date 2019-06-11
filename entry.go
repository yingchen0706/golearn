package main

import (
	"bytes"
	"fmt"
	"github.com/yingchen0706/golearn/golibrary"
	"os"
)

func main() {
	// data, err := golibrary.ReadFrom(os.Stdin, 11)
	// data, err := golibrary.ReadFrom(strings.NewReader("1234567890123"), 11)
	file, err := os.Open("array.go")
	defer file.Close()
	data, err := golibrary.ReadFrom(file, 11)
	if err != nil {
		fmt.Printf("error: %s\n", err.Error())
	} else {
		fmt.Printf("%s\n", data)
	}

	reader := bytes.NewReader([]byte("1234567"))
	reader.WriteTo(os.Stdout)
}

