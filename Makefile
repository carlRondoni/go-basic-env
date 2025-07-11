# local
run:
	go run ./cmd/main;

build:
	go build -ldflags="-s -w" -o ./compiled ./cmd/main;

test:
	go test -v ./...;

# docker
docker-build:
	docker build . --tag "compiled"
