FROM golang:1.21-alpine AS base
WORKDIR /src
ENV CGO_ENABLED=0
COPY ./src .
RUN go mod download

FROM base AS build
RUN go build -o /out/compiled .

FROM base AS unit-test
RUN go get github.com/stretchr/testify/require
RUN go test -v .

FROM scratch AS bin
COPY --from=build /out/compiled /