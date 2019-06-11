package bench

import (
	"fmt"
	"strconv"
	"testing"

	"github.com/yingchen0706/golearn/hash"
)

func getInputString1() string {
	pubId := "561e8d926b8d90f61a000008"
	//appId := "597c192176da46c277000620"
	deviceId := "E0CCB884-B9CD-4D3A-8F98-233623CD8D12"
	//return pubId + appId + deviceId
	return pubId + deviceId
}

func Benchmark_hash_md5(b *testing.B) {
	for n := 0; n < b.N; n++ {
		hashtest.HashByMD5(getInputString1())
	}
}

func Benchmark_hash_sha1(b *testing.B) {
	for n := 0; n < b.N; n++ {
		hashtest.HashBySHA1(getInputString1())
	}
}

func Benchmark_hash_sha256(b *testing.B) {
	for n := 0; n < b.N; n++ {
		hashtest.HashBySHA256(getInputString1())
	}
}

func convert(sum32 uint32) string {
	return strconv.FormatUint(uint64(sum32), 10)
}

func Benchmark_hash_murmur3_32(b *testing.B) {
	for n := 0; n < b.N; n++ {
		hashtest.HashByMurMur3_32([]byte(getInputString1()))
	}
	fmt.Print("/=")
	fmt.Print(convert(hashtest.HashByMurMur3_32([]byte("1234-1234"))))
	fmt.Print("/=")
	fmt.Print("/=")
}

func Benchmark_hash_murmur3_64(b *testing.B) {
	for n := 0; n < b.N; n++ {
		hashtest.HashByMurMur3_64([]byte(getInputString1()))
	}
	fmt.Print("=")
	fmt.Print(hashtest.HashByMurMur3_32([]byte("5c708b8a680cf16c1f434171234-1234-1234")))
	fmt.Print("=")
}
