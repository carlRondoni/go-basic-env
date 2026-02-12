# base
FROM golang:1.26-alpine AS base

WORKDIR /app

COPY go.* ./
RUN go mod download

COPY . .

# build
FROM base AS build

RUN go build -o apiserver ./cmd/api

# deploy
FROM debian:trixie-slim AS webserver

WORKDIR /
COPY --from=build /app/apiserver /apiserver

EXPOSE 8080

CMD ["/apiserver"]
