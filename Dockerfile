FROM alpine:latest

RUN apk -U --no-cache upgrade \
    && apk --no-cache add qemu-system-aarch64

ENTRYPOINT ["qemu-system-aarch64"]
