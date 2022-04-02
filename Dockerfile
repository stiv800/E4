FROM alpine
RUN apk --update add openssl wget && rm -rf /var/cache/apk/* && mkdir -p /tmp/favicon
COPY wget_cmd.sh /wget_cmd.sh
RUN chmod +x /wget_cmd.sh
ENTRYPOINT ["/bin/sh", "/wget_cmd.sh"]