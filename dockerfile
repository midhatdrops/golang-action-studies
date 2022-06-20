FROM golang:1.16-alpine

WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY *.go ./

RUN go build -o /golang-actions

EXPOSE 8080

CMD [ "/golang-actions" ]