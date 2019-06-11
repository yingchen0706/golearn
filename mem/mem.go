package main

import "fmt"

type coder interface {
	code()
	debug()
}

type Gopher struct {
	Language string
}

func (p Gopher) code() {
	fmt.Printf("I am coding %s language\n", p.Language)
}

func (p *Gopher) debug() {
	fmt.Printf("I am debuging %s language\n", p.Language)
	p.Language = "Python"
}

func main() {
	var c coder = &Gopher{"Go"}
	c.code()
	c.debug()

	a := &Gopher{"Java"}
	a.code()
	a.debug()

	d := Gopher{"Java"}
	d.debug()
	d.code()
}