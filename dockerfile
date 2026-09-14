FROM debian:bookworm-slim

WORKDIR /app

RUN apt-get update \
    && apt-get install -y --no-install-recommends ca-certificates \
    && update-ca-certificates \
    && rm -rf /var/lib/apt/lists/*

COPY luna-1_6_0-linux-amd64 /app/luna

RUN chmod +x /app/luna

EXPOSE 7126

ENTRYPOINT ["/app/luna"]
