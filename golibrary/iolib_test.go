package golibrary

import (
	"fmt"
	"io"
	"os"
	"strings"
	"testing"
)

func TestReadFrom(t *testing.T) {
	reader := strings.NewReader("1234567")
	p := make([]byte, 6)
	n, err := reader.ReadAt(p, 2)
	if err != nil && err != io.EOF {
		panic(err)
	}
	fmt.Printf("%s, %d\n", p, n)
}

func TestWriteAt(t *testing.T) {
	file, err := os.Create("writeAt.txt")
	if err != nil {
		panic(err)
	}

	defer file.Close()

	file.WriteString("1234567890")
	n, err := file.WriteAt([]byte("ABCD"), 6)
	if err != nil {
		panic(err)
	}
	fmt.Println(n)
}

func TestSeeker(t *testing.T) {
	reader := strings.NewReader("Go语言中文网")
	reader.Seek(-6, io.SeekEnd)
	//r, _, _ := reader.ReadRune()
	//fmt.Printf("%c\n", r)
	reader.WriteTo(os.Stdout)
	io.WriteCloser()
}
