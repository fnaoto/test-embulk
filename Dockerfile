FROM java:8

RUN rm /etc/apt/sources.list.d/*

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install mysql-client

RUN curl -o /usr/local/bin/embulk --create-dirs \
      -L "http://dl.embulk.org/embulk-latest.jar" && \
    chmod +x /usr/local/bin/embulk
