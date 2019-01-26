FROM alpine:latest
RUN apk -U add --no-cache ca-certificates
COPY rclone /usr/bin/
VOLUME [ "/root/.config/rclone", "/data" ]
ENTRYPOINT [ "/usr/bin/rclone" ]