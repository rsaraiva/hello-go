FROM golang:alpine AS builder
WORKDIR $GOPATH/src/github.com/repo/app
COPY . .
RUN apk update && apk add --no-cache git
RUN go get -d -v
RUN GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -ldflags="-w -s" -o /go/app

FROM scratch
COPY --from=builder /go/app /go/app
CMD ["/go/app"]
