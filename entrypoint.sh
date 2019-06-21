#!/usr/bin/env sh
if [ -n "$CADDYFILE_DIR" ]; then
    cd "$CADDYFILE_DIR"
fi
if [ ! -f Caddyfile ]; then
    echo "Error: Could not find $PWD/Caddyfile" >&2
    exit 1
fi

caddy
