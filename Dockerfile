FROM golang:1.4

RUN apt-get update
RUN apt-get -y install sudo

COPY . /go/src/github.com/bcicen/docker-squash
RUN go get github.com/bcicen/docker-squash

ENTRYPOINT ["docker-squash"]
