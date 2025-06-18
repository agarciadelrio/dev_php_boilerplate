#!/bin/bash
set -e
ENV_FILE="dev.config.env"
export $(grep -v '^#' "$ENV_FILE" | xargs)
browser-sync \
    start -p "0.0.0.0:$PHPS_PORT" \
    --watch --files "./public/" \
    --no-notify --no-open --no-inject-changes