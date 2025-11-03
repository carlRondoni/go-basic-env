# base
FROM golang:1.25-alpine AS base

WORKDIR /app

COPY go.* ./
RUN go mod download

COPY . .

# build
FROM base AS build

RUN --mount=type=cache,target=/root/.cache/go-build CGO_ENABLED=0 go build o apiserver ./cmd/api

# deploy
FROM debian:trixie-slim AS webserver

WORKDIR /
COPY --from=build /app/apiserver /apiserver

USER nonroot:nonroot
EXPOSE 8080

CMD ["/apiserver"]
