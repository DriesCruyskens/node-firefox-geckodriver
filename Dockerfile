FROM alpine

# geckodriver needs to be on path in order for WebDriver to find it.
ENV PATH="${PATH}:/webdrivers/"
COPY webdrivers /webdrivers 

# installing node and npm (npm depends on node)
RUN apk add --update npm

# installing firefox
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
    apk update && \
    apk add --no-cache firefox-esr