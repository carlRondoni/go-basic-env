FROM golang:1.20-alpine AS build

WORKDIR /src

COPY ./src .

RUN go mod download

RUN go build -o /out/example .

FROM scratch AS bin

COPY --from=build /out/example /