# Go Basic Environment

This repository provides a clean and organized starter structure for building scalable Go applications.  
It aims to speed up project setup by following Go community best practices.

## Requirements

- docker
- go
- make

## Features

- Organized into `cmd`, `internal`, `pkg`, and `tests` directories.
- Clean and minimal baseline for Go development.

## Project Structure

```text
cmd/        # Entry points (main.go files)
internal/   # Private application and domain code
pkg/        # Public libraries (can be imported by other projects)
tests/      # Integraton test Folder
Dockerfile  # Main docker file for the compiling
Makefile    # Common development commands

# Getting Started

1. Clone this repo

```
git clone https://github.com/carlRondoni/go-basic-env.git
cd go-basic-env
```

2. Initilize the module:

```
go mod init {your-repo-url-here}
go mod tidy
```

3. Do your go code. Check examples on cmd for main and internal for other flows.

4. Run the go code locally:

```
make run
```

4. To compile the file from the code:

```
make build
```

5. To run tests`:

```
make test
````

6. To build the image

```
make docker-build
```

# To update

- [ ] readme tags (go version)
- [ ] add linter
 
# License

Distributed under the MIT License. See LICENSE for more information.
