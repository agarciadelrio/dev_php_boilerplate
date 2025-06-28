#!/bin/bash
set -e
ENV_FILE="dev.config.env"
export $(grep -v '^#' "$ENV_FILE" | xargs)
# --no-inject-changes
browser-sync \
    start -p "0.0.0.0:$PHPS_PORT" \
    --files "./public/" \
    --no-notify --no-open