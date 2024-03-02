COMPILED_FILE_NAME = "compiled"

# local
run:
	go run ./cmd/main

build:
	go build -o ./${COMPILED_FILE_NAME} ./cmd/main

test:
	go test ./...

# docker
docker-build:
	docker run .

docker-unit-test:
	docker build . --target unit-test
