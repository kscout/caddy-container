# Caddy Container
Caddy Docker container.

# Table Of Contents
- [Overview](#overview)
- [Development](#development)

# Overview
[docker.io/kscout/caddy](https://cloud.docker.com/u/kscout/repository/docker/kscout/caddy)  

Expects to find `Caddyfile` in the `/mnt` directory.  
Customize by setting the `CADDYFILE_DIR` environment variable.

# Development
Build and push:

```
make up
```

Build:

```
make build
```

Push:

```
make push
```
