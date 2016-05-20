FROM ubuntu:14.04

MAINTAINER komuW <komuw05@gmail.com>

RUN apt-get update

RUN apt-get -y install wget \
                       kannel

RUN wget https://github.com/Yelp/dumb-init/releases/download/v1.0.2/dumb-init_1.0.2_amd64.deb

RUN dpkg -i dumb-init_*.deb

RUN set -x ln -s /usr/bin/dumb-init /usr/local/bin/dinit

COPY default.kannel.conf /etc/default/kannel

EXPOSE 13013 13013

COPY ./run.sh /app/run.sh

WORKDIR /app

CMD ["dinit", "/app/run.sh"]