FROM ubuntu:trusty
MAINTAINER Sergey Arkhipov <serge@aerialsounds.org>

RUN apt-get -qq update && apt-get install -y -qq git make gcc libssl-dev
RUN git clone https://github.com/giltene/wrk2.git /root/wrk2
RUN cd /root/wrk2 && make && mv wrk /usr/bin/wrk && rm -rf /root/wrk2

CMD ["/usr/bin/wrk"]
