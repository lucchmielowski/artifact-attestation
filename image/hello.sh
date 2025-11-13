#!/bin/sh
set -eu

printf "Hello from the attestation demo image!\n"

# Print basic runtime info to have something deterministic in logs
printf "User: %s\n" "$(id -un)"
printf "Date: %s\n" "$(date -u +'%Y-%m-%dT%H:%M:%SZ')"

# Keep container short-lived by default
exit 0
