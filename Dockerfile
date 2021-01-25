FROM alpine

#Install privoxy
RUN apk add --update --no-cache privoxy

# Custom configuration
COPY privoxy/config /etc/privoxy/config
COPY privoxy/user.action /etc/privoxy/user.action

ENTRYPOINT ["/usr/sbin/privoxy",  "--no-daemon", "/etc/privoxy/config"]
