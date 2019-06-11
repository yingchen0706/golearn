package main

import (
	"fmt"
	"google.golang.org/grpc"
	"os"
)

func main() {
	grpcConnection, err := grpc.Dial("localhost:8500", grpc.WithInsecure())

	if err != nil {
		fmt.Printf("did not connect: %v", err)
		os.Exit(1)
	} else {
		fmt.Println("Connect to 8500 successfully!")
	}

	if err := grpcConnection.Close(); err != nil {
		fmt.Errorf("adbuilder connection close error %v", err)
	} else {
		fmt.Println("Disconnect from 8500 successfully!")
	}
}
