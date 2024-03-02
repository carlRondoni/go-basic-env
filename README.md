# go-build-env

This is tiny repo for a work env for golang projects and create the binaries.

### For `Dockerfile`

https://www.docker.com/blog/containerize-your-go-developer-environment-part-1/

https://www.docker.com/blog/containerize-your-go-developer-environment-part-2/

https://www.docker.com/blog/containerize-your-go-developer-environment-part-3/

NOTE: I saw is outdated because the experimental syntax for docker doesnt exist anymore, now installing the buildx package on your system does everything.

### For basic folder structure

thanks to Melkey video:

https://www.youtube.com/watch?v=dxPakeBsgl4&t=3s

# Requirements

- docker
- docker buildx
- go

Initilize the module with:

`go mod init {your-package-name-here}`

# Comands:

Check `Makefile`
