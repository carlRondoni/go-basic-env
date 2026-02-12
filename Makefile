# local basics for main
SHELL := /bin/bash
DOCKER := /usr/bin/docker

run:
	go run ./cmd/main;

build:
	go build -o ./compiled ./cmd/main
	go build -o ./api ./cmd/api

test:
	go test -v ./...

docker-build:
	docker build .

docker-run:
	docker run --rm -it -p 8080:8080 api
