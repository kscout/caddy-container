.PHONY: up build push

TAG ?= kscout/caddy:v1

# build and push
up: build push

# build Docker image
build:
	docker build -t ${TAG} .

# push Docker image
push:
	docker push ${TAG}
