# build:
#   docker build -t golang_simple_http_server:latest .
#
# run:
#   docker run --rm -p 8080:8080 golang_simple_http_server:latest

FROM golang:alpine3.18

RUN mkdir -p /work/golang_simple_http_server
WORKDIR /work/golang_simple_http_server

COPY *.* /work/golang_simple_http_server

RUN go build .
RUN ls -la
RUN mv golang_simple_http_server /usr/local/bin

CMD ["/usr/local/bin/golang_simple_http_server"]
