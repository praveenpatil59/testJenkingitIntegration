FROM ubuntu:14.04

MAINTAINER praveen

RUN apt-get update && apt-get install -y ngnix

ADD index.html /usr/share/ngnix/html/index.html

ENTRYPOINT ["/usr/sbin/ngnix","-g","daemon off;"]

EXPOSE 80



