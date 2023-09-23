# go-build-env

This is tiny repo for a work env for golang projects and create the binaries.

thanks to: https://www.docker.com/blog/containerize-your-go-developer-environment-part-1/
and: https://www.docker.com/blog/containerize-your-go-developer-environment-part-2/

NOTE: I know the repo is there but wanted to read en try on my own to learn deeper this env and a smaller one for quick compiler

# Requirements

- docker
- go (with GOPATH defined) for go mod stuff on your local to set up dependencies

# Common comands

This command is for compile the golang code you did inside `src/` folder:

`docker build . --target bin --output src/`

For testing:

`docker build . --target unit-test`