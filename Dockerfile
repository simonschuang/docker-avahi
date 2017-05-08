FROM ubuntu:xenial

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y avahi-utils vim 
RUN DEBIAN_FRONTEND=noninteractive

ADD http.service /etc/avahi/services/http.service
ADD run.sh /run.sh

CMD ["/run.sh"]
