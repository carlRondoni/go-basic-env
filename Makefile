# local basics for main
run:
	go run ./cmd/main;

build:
	go build -ldflags="-s -w" -o ./compiled ./cmd/main;

test:
	go test -v ./...;

# docker exposing api
docker-build-and-run:
	docker build -t api:latest . --tag "webserver"
	docker run -d --name api-test api:latest
