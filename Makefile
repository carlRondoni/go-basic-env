# local basics for main
SHELL := /bin/bash
DOCKER := /usr/bin/docker

run:
	go run ./cmd/main;

build:
	go build -ldflags="-s -w" -o ./compiled ./cmd/main
	go build -ldflags="-s -w" -o ./api ./cmd/api

test:
	go test -v ./...

docker-build:
	docker build -t api .

docker-run:
	docker run --rm -it -p 8080:8080 api

clean:
	rm -f apiserver