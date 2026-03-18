# Go Basic Environment

This repository provides a clean and organized starter structure for building scalable Go applications.

With examples for API and a simple binary, you can take them and expand as you need and adding internal app logic into internal folder (because of this is empty, depends on you mate)

## Requirements on your machine

- docker
- go (>=1.26)
- make

## Features

- Organized into `cmd` directory, as entrypoint and example for a basic hello world or api.
- Makefile with basic go commands to compile.
- Clean and minimal baseline for Go development.

## Project Structure

```
cmd/main    # Entry point as a basic program
cmd/api     # Entry point as a basic api
Makefile    # Common development commands
```

# Getting Started

1. Clone this repo run:

```
git clone {url/ssh repo}
cd go-basic-env
```

2. Initialize the module in case you don't want to have same module name. Remove `go.mod` and `go.sum` and run:

```
go mod init {your-project-name/url-here}
go mod tidy
```

3. Do your code. Check examples on `cmd/main` or `cmd/api` for the entrypoints and extend it to internal.

4. Run the `cmd/main` locally:

```
make run-main
```

5. To compile the binaries from the cmd:

```
make build
```

6. To run unit tests:

```
make test
```

7. To run api server:

```
make docker-run
``` 

# Next Steps

- [ ] logs in grafana api -> alloy -> loki -> grafana (docker compose + makefile commands)
- [ ] traces in grafana api (docker compose updates)
- [ ] cmd/command as an example for cli code.
 
# License

Distributed under the MIT License. See LICENSE for more information.
