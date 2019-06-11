package main

import (
	"bytes"
	"fmt"
	"io"
	"io/ioutil"
	"net/http"
)

type Msg struct {
	Msg string `json:"msg"`
	Code int `json:"code"`
}

func main() {
	/*resp, err := http.Get("https://www.baidu.com/")
	if err != nil {
		fmt.Println(err)
		return
	}
	defer resp.Body.Close()
	body, err := ioutil.ReadAll(resp.Body)
	fmt.Println(body)

	body2, err := io.Copy(ioutil.Discard, resp.Body)
	// body, err = ioutil.ReadAll(resp.Body)
	if err != nil {
		fmt.Println(body2)
	}*/
	// Create a new channel with `make(chan val-type)`.
	// Channels are typed by the values they convey.
	messages := make(chan string)

	// _Send_ a value into a channel using the `channel <-`
	// syntax. Here we send `"ping"`  to the `messages`
	// channel we made above, from a new goroutine.
	go func() {
		messages <- "test"
		close(messages)
	}()
	go func() {
	}()

	// The `<-channel` syntax _receives_ a value from the
	// channel. Here we'll receive the `"ping"` message
	// we sent above and print it out.
	msg, ok := <-messages
	//msg, ok = <-messages
	fmt.Println(ok)
	fmt.Println(msg)


	jsonBytes, err := ioutil.ReadFile("test.json")
	hr, err := http.NewRequest(http.MethodGet, "https://apiqa.vungle.com/api/v4/sessionEnd", bytes.NewReader(jsonBytes))
	resp, _ := http.DefaultClient.Do(hr)
	if err != nil {
		fmt.Println(err)
		return
	}
	defer resp.Body.Close()

	//ar := &Msg{}
	//bytes := make([]byte, 100)
  //resp.Body.Read(bytes)
	//fmt.Println(string(bytes))
	//err3 := json.NewDecoder(resp.Body).Decode(ar)
	//fmt.Printf("%+v\n", *ar)
	//fmt.Println(err3)

	body2, err := io.Copy(ioutil.Discard, resp.Body)
	fmt.Println(string(body2))
	fmt.Println(err)
}

