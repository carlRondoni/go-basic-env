# Go Basic Environment

This repository provides a clean and organized starter structure for building scalable Go applications.

## Requirements

- docker
- go
- make

## Features

- Organized into `cmd` directory, as entrypoint and example for a basic hello world example.
- Make file with basic go commands to compile.
- Clean and minimal baseline for Go development.

## Project Structure

```
cmd/main    # Entry point as a basic program
Makefile    # Common development commands
```

# Getting Started

1. Clone this repo

```
git clone https://github.com/carlRondoni/go-basic-env.git
cd go-basic-env
```

2. Initilize the module:

```
go mod init {your-project-here}
go mod tidy
```

3. Do your go code. Check example on `cmd/main`.

4. Run the go code locally:

```
make run
```

5. For compile the file from the code:

```
make build
```

6. To run tests`:

```
make test
````

# Next Steps

- [ ] cmd/command as an example for cli code
 
# License

Distributed under the MIT License. See LICENSE for more information.
