package main

import (
	"fmt"
	"github.com/gomodule/redigo/redis"
)

func main() {
	c, err := redis.Dial("tcp", "127.0.0.1:6379")
	if err != nil {
		fmt.Println(err)
		return
	}

	defer c.Close()

	c.Do("SET", "hello", "world")
	s, err := redis.String(c.Do("GET", "hello"))
	fmt.Printf("%#v\n", s)
}