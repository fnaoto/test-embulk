FROM java:8

RUN apt-get -y update && apt-get -y upgrade

RUN curl -o /usr/local/bin/embulk --create-dirs -L "http://dl.embulk.org/embulk-latest.jar" && \
    chmod +x /usr/local/bin/embulk
