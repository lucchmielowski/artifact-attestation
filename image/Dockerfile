# Minimal image for attestation demo
# Build args allow easy upgrades without changing the file
ARG ALPINE_VERSION=3.20
FROM alpine:${ALPINE_VERSION}

# OCI labels are helpful metadata attached to the image
LABEL org.opencontainers.image.title="artifact-attestation demo image" \
      org.opencontainers.image.description="Minimal demo image built for GitHub Actions attestation workflow" \
      org.opencontainers.image.licenses="MIT"

# Create a non-root user to run the container
RUN adduser -D -h /home/appuser appuser
USER appuser
WORKDIR /app

# Copy a tiny script as the image entrypoint
COPY --chown=appuser:appuser hello.sh /app/hello.sh
RUN chmod +x /app/hello.sh

# Simple healthcheck (optional)
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 CMD /bin/sh -c '[ -f /app/hello.sh ] || exit 1'

CMD ["/app/hello.sh"]
