.PHONY: up build push

VERSION ?= v0.1.0
TAG ?= kscout/caddy:${VERSION}

# build and push
up: build push

# build Docker image
build:
	docker build -t ${TAG} .

# push Docker image
push:
	docker push ${TAG}
