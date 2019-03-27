FROM alpine:latest

LABEL maintainer="Peng Xiao <xiaoquwl@gmail.com>"

RUN apk update && apk upgrade && \
    apk add --no-cache net-snmp-tools && \
    apk add --no-cache openssh-client && \
    apk add --no-cache busybox-extras && \
    apk add --no-cache curl

WORKDIR /omd

VOLUME ["/omd"]

CMD []
