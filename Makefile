# local
run:
	go run .

build:
	go build .

test:
	go test ./...

# docker
docker-build:
	docker run .

docker-unit-test:
	docker build . --target unit-test
