FROM golang:1.16.0-alpine3.13 as builder
WORKDIR /usr/src/app

COPY app.go .
COPY go.mod .
RUN go build -o docker-challenge-01

FROM scratch
WORKDIR /usr/src/app

COPY --from=builder /usr/src/app .

ENTRYPOINT [ "./docker-challenge-01" ]