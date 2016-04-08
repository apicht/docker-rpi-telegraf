# Pull base image
FROM apicht/rpi-golang:latest
MAINTAINER Aaron Picht <https://github.com/apicht/docker-rpi-telegraf>

# Install dependencies
RUN apt-get update && apt-get install -y \
    gcc \
    make && \
    rm -rf /var/lib/apt/lists/*

# Data volume
VOLUME ["/data"]

# Build Telegraf
RUN go get github.com/influxdata/telegraf
RUN git config --global http.sslVerify false
RUN cd $GOPATH/src/github.com/influxdata/telegraf && \
    CGO_ENABLED=0 make

# Add startup script
ADD startup.sh /startup.sh

# Define default command
ENTRYPOINT ["/startup.sh"]

