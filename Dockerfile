# syntax=docker/dockerfile:1

ARG COMPILED_FILE_NAME="compiled"

# base
FROM golang:1.22-alpine AS base

WORKDIR /src

COPY go.* ./
RUN go mod download

COPY . .

# build
FROM base AS build
RUN --mount=type=cache,target=/root/.cache/go-build go build -o /out/${COMPILED_FILE_NAME} ./cmd/main

# test
FROM base AS unit-test
RUN go get github.com/stretchr/testify/require
RUN --mount=type=cache,target=/root/.cache/go-build go test ./... -v

# deploy
FROM scratch AS bin
COPY --from=build /out/${COMPILED_OUT_NAME} /
