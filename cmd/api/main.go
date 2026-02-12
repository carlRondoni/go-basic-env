package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/", test)

	fmt.Println("Ready to handle stuff here!!")
	log.Fatal(http.ListenAndServe(":80", nil))
}

func test(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("OK"))
}
