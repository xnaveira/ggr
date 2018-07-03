.PHONY: build deploy

APP := ggr
DOCKER_IMAGE := xnaveira/$(APP)
VERSION := 1.0.7

build:
	docker build --no-cache -t $(DOCKER_IMAGE):$(VERSION) .

push: build
	docker push $(DOCKER_IMAGE):$(VERSION)
