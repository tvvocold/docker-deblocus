FROM google/golang

MAINTAINER tvvocold

WORKDIR /gopath/src/deblocus
ADD . /gopath/src/deblocus
RUN go get github.com/spance/deblocus

CMD []
ENTRYPOINT ["/gopath/bin/deblocus"]
