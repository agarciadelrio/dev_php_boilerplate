#!/bin/bash
set -e
ENV_FILE="dev.config.env"
export $(grep -v '^#' "$ENV_FILE" | xargs)
echo "http://localhost:$PHPS_PORT"
echo "XDEBUG PORT: $XDEBUG_PORT"
php \
    -dxdebug.mode=debug \
    -dxdebug.client_port="$XDEBUG_PORT" \
    -dxdebug.start_with_request=yes \
    -S "0.0.0.0:$PHPS_PORT" \
    -t public \
    index_dev.php