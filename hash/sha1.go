package hashtest

import (
	"crypto/md5"
	"crypto/sha1"
	"crypto/sha256"

	"github.com/twmb/murmur3"
)

const Size0 = 16
const Size1 = 20
const Size2 = 32

func HashByMD5(input string) [Size0]byte {
	data := []byte(input)
	return md5.Sum(data)
}

func HashBySHA1(input string) [Size1]byte {
	data := []byte(input)
	return sha1.Sum(data)
}

func HashBySHA256(input string) [Size2]byte {
	data := []byte(input)
	return sha256.Sum256(data)
}

func HashByMurMur3_32(data []byte) uint32{
	sum32 := murmur3.Sum32(data)
	return sum32
	//hasher := murmur3.New32()
	//hasher.Write(data)
	//return hasher.Sum32()
}

func HashByMurMur3_64(data []byte) uint64{
	hasher := murmur3.New64()
	hasher.Write(data)
	return hasher.Sum64()
}

func GetApplicationList() []string {
	return getPubList()
}