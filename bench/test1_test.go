package bench

import (
	"sync"
	"testing"
)

func putValueIntoSyncMap1(wg *sync.WaitGroup, mySyncMap sync.Map) {
	mySyncMap.Store("A", "A")
	mySyncMap.Store("B", "B")
	mySyncMap.Store("C", "C")
	wg.Done()
}
func putValueIntoSyncMap2(wg *sync.WaitGroup, mySyncMap sync.Map) {
	mySyncMap.Store("1", "A")
	mySyncMap.Store("2", "B")
	mySyncMap.Store("3", "C")
	wg.Done()
}


func solution1() {
	wg := &sync.WaitGroup{}
	dmap := sync.Map{}
	wg.Add(1)
	go putValueIntoSyncMap1(wg, dmap)
	wg.Add(1)
	go putValueIntoSyncMap2(wg, dmap)
	wg.Wait()

	map2 := make(map[string]string)
	dmap.Range(func(k interface{}, v interface{}) bool{
		map2[k.(string)] = v.(string)
		return true
	})
}

func putValueIntoSyncMap5(wg *sync.WaitGroup, myMap map[string]string) {
	myMap["A"] = "A"
	myMap["B"] = "B"
	myMap["C"] = "C"
	wg.Done()
}
func putValueIntoSyncMap6(wg *sync.WaitGroup, myMap map[string]string) {
	myMap["1"] = "A"
	//myMap["2"] = "B"
	//myMap["3"] = "C"
	wg.Done()
}
func putValueIntoSyncMap66(wg *sync.WaitGroup, myMap map[string]string) {
	myMap["4"] = "A"
	myMap["5"] = "B"
	myMap["6"] = "C"
	wg.Done()
}

func solution3() {
	wg := &sync.WaitGroup{}
	map1 := make(map[string]string)
	map2 := make(map[string]string)
	//map3 := make(map[string]string)
	wg.Add(1)
	go putValueIntoSyncMap5(wg, map1)
	wg.Add(1)
	go putValueIntoSyncMap6(wg, map2)
	//wg.Add(1)
	//go putValueIntoSyncMap66(wg, map3)
	wg.Wait()

	mapTotal := make(map[string]string)
	for k,v := range map1 {
		mapTotal[k] = v
	}
	for k,v := range map2 {
		mapTotal[k] = v
	}
	/*for k,v := range map3 {
		mapTotal[k] = v
	}*/
}

func putValueIntoSyncMap3(wg *sync.WaitGroup, bufferChan chan<- item) {
	bufferChan<-item{"A", "A"}
	bufferChan<-item{"B", "B"}
	bufferChan<-item{"B", "C"}
	wg.Done()
}
func putValueIntoSyncMap4(wg *sync.WaitGroup, bufferChan chan<- item) {
	bufferChan<-item{"1", "A"}
	//bufferChan<-item{"2", "B"}
	//bufferChan<-item{"3", "C"}
	wg.Done()
}
func putValueIntoSyncMap44(wg *sync.WaitGroup, bufferChan chan<- item) {
	bufferChan<-item{"4", "A"}
	bufferChan<-item{"5", "B"}
	bufferChan<-item{"6", "C"}
	wg.Done()
}

type item struct {
	key string
	val string
}
func solution2() {
	wg := &sync.WaitGroup{}
	bufferChan := make(chan item, 10)
	wg.Add(1)
	go putValueIntoSyncMap3(wg, bufferChan)
	wg.Add(1)
	go putValueIntoSyncMap4(wg, bufferChan)
	//wg.Add(1)
	//go putValueIntoSyncMap44(wg, bufferChan)
	wg.Wait()
	close(bufferChan)

	map2 := make(map[string]string)
	for v:= range bufferChan {
		map2[v.key] = v.val
	}
}

func Benchmark_S1(b *testing.B) {
	// run the Fib function b.N times
	for n := 0; n < b.N; n++ {
		solution1()
	}
}

func Benchmark_S2(b *testing.B) {
	// run the Fib function b.N times
	for n := 0; n < b.N; n++ {
		solution2()
	}
}
func Benchmark_S3(b *testing.B) {
	// run the Fib function b.N times
	for n := 0; n < b.N; n++ {
		solution3()
	}
}

