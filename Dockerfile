FROM alpine
MAINTAINER OpenGG <liy099@gmail.com>

RUN apk --update add --no-cache aria2
    
HEALTHCHECK --start-period=2s --interval=5s --timeout=3s \
  CMD curl -f http://localhost/health || exit 1

EXPOSE 6800

ENTRYPOINT ["aria2c"]
