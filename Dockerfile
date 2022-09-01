FROM alpine:latest as build
RUN apk add --update alpine-sdk perl linux-headers
RUN cd /tmp && \
    git clone -b 4.2.0 https://github.com/wg/wrk
RUN cd /tmp/wrk && \
    make


FROM alpine:latest

LABEL maintainer="Peng Xiao <xiaoquwl@gmail.com>"

RUN apk update && apk upgrade && \
    apk add --no-cache net-snmp-tools && \
    mkdir /var/lib/net-snmp && \
    mkdir /var/lib/net-snmp/mib_indexes && \
    apk add --no-cache snmptt && \
    apk add --no-cache openssh-client && \
    apk add --no-cache busybox-extras && \
    apk add --no-cache curl && \
    apk add --no-cache iperf3 && \
    apk add --no-cache bind-tools && \
    apk add --no-cache nmap && \
    apk add --no-cache scanssh && \
    apk add --no-cache mtr

COPY --from=build /tmp/wrk/wrk /usr/local/bin/

WORKDIR /omd

VOLUME ["/omd"]

CMD []
