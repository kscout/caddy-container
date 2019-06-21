#!/usr/bin/env sh
if [ -n "$CADDYFILE_DIR" ]; then
    cd "$CADDYFILE_DIR"
fi
caddy
