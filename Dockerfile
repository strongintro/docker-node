FROM gliderlabs/alpine:latest
MAINTAINER Fouad Matin <fouad@strongintro.com>

RUN apk add --update make gcc g++ python nodejs
COPY ./conf/npmrc /root/.npmrc
