VERSION ?= latest
DOCKER_USER := beshleman
NAME := qemu-system-aarch64
TAG ?= $(DOCKER_USER)/$(NAME):$(VERSION)

.PHONY: build
build:
	docker build . -t $(TAG)

.PHONY: push
push: build
	docker push $(TAG)

.PHONY: run
run:
	docker run -it $(TAG) "$(ARGS)"
