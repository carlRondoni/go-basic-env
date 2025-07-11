# base
FROM golang:1.24-alpine AS base

WORKDIR /app
COPY go.* ./
RUN go mod download
COPY . .

# build
FROM base AS build

RUN CGO_ENABLED=0 GOOS=linux go build -a installsufix cgo -o apiserver ./cmd/api

# deploy
FROM alpine:latest AS webserver

COPY --from=build /app/apiserver .

FROM webserver AS webapp
EXPOSE 80
CMD ["/apiserver"]
