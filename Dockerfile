FROM alpine
RUN apk --update add --no-cache --virtual .build-deps bash curl && \
    curl --silent --show-error "https://get.symfony.com/cli/installer" | bash -s -- --install-dir /usr/local/bin && \
    apk del --no-cache .build-deps
WORKDIR /app
ENTRYPOINT ["/usr/local/bin/symfony"]
