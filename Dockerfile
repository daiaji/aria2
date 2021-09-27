FROM alpine
MAINTAINER OpenGG <liy099@gmail.com>

RUN apk update \
    && apk add --no-cache aria2

EXPOSE 6800

ENTRYPOINT ["aria2c"]
