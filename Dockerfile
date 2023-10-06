FROM alpine:3.18 as alpine
RUN apk add -U --no-cache ca-certificates

ENV GOLANG_VERSION ""

ADD outyet /bin/outyet
ENTRYPOINT ["/bin/sh", "-c", "/bin/outyet --http 0.0.0.0:8080 --version ${GOLANG_VERSION:-1.14}"]
