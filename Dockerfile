FROM golang:1.22.3

WORKDIR /godocapp

COPY go.mod go.sum ./
RUN go mod download


COPY . .


RUN go build -o godocapp

EXPOSE 8080

CMD ["./godocapp"]