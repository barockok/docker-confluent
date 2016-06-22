FROM anapsix/alpine-java:latest
RUN apk update && apk upgrade
RUN apk add ruby
RUN rm -rf /var/cache/apk/*
RUN wget http://packages.confluent.io/archive/2.0/confluent-2.0.0-2.11.7.tar.gz
RUN tar xzf confluent-2.0.0-2.11.7.tar.gz
RUN rm confluent-2.0.0-2.11.7.tar.gz