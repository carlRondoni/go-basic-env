# base
FROM golang:1.24-alpine AS base

WORKDIR /app

COPY go.* ./
RUN go mod download

COPY . .

# build
FROM base AS build
RUN --mount=type=cache,target=/root/.cache/go-build CGO_ENABLED=0 go build -o /app/apiserver ./cmd/api

# deploy
FROM alpine:latest AS webserver

COPY --from=build /app/apiserver /apiserver
RUN chmod +x /apiserver

EXPOSE 80
ENTRYPOINT ["/apiserver"]
