COMPILED_FILE_NAME = "compiled"

# local
run:
	go run ./cmd/main;

build:
	go build -ldflags="-s -w" -o ./${COMPILED_FILE_NAME} ./cmd/main;

test:
	go test -v ./...;

# docker
docker-build:
	docker build . --tag "compiled"

docker-test:
	docker build . --target unit-test --tag "compiled:test"
