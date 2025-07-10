package api

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	handleRequests()
}

func handleRequests() {
	http.HandleFunc("/", test)
	log.Fatal(http.ListenAndServe(":80", nil))
}

func test(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Welcome to test api!")
	fmt.Println("/ endpoint reached!!")
}
