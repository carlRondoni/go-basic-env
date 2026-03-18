# local basics for main
SHELL := /bin/bash
DOCKER := /usr/bin/docker

run-main:
	go run ./cmd/main;

build:
	go build -o ./main ./cmd/main
	go build -o ./api ./cmd/api

test:
	go test -v ./... -tags=unit -failfast

docker-build-api:
	docker build . -t api

docker-run:
	docker run --rm -itd -p 8080:8080 api
