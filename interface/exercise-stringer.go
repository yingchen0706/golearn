package main

import "fmt"

type IPAddr [4]byte
func (ip IPAddr) String() string {
	var s string
	for i, sec := range ip {
		if i != 0 {
			s += "."
		}
		s += fmt.Sprintf("%v", sec)
	}
	return s
}

// TODO: 给 IPAddr 添加一个 "String() string" 方法

func main() {
	hosts := map[string]IPAddr{
		"loopback":  {127, 0, 0, 1},
		"googleDNS": {8, 8, 8, 8},
	}
	for name, ip := range hosts {
		fmt.Printf("%v: %v\n", name, ip)
	}
}