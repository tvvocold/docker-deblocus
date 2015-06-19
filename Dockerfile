FROM google/golang

MAINTAINER tvvocold

WORKDIR /gopath/src/deblocus
ADD . /gopath/src/deblocus
RUN go get github.com/spance/deblocus
RUN echo "user:passwd" >> ./user.conf
CMD ["bash", "./deblocus -csc>deblocus.d5s"]
CMD ["bash", "./deblocus -icc user"]

EXPOSE 9009
CMD ["sh", "./deblocus -serv v=3"]
ENTRYPOINT ["/gopath/bin/deblocus"]
