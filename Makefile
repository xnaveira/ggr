.PHONY: build deploy

APP := ggr
DOCKER_IMAGE := xnaveira/$(APP)
VERSION := 1.0.2

build:
	docker build -t $(DOCKER_IMAGE):$(VERSION) .

push:
	docker push $(DOCKER_IMAGE):$(VERSION)
