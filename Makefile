.PHONY: build deploy

APP := ggr
DOCKER_IMAGE := xnaveira/$(APP)
VERSION := 1.0.8

build:
	docker build --no-cache -t $(DOCKER_IMAGE):$(VERSION) .

push: build
	docker push $(DOCKER_IMAGE):$(VERSION)

deploy:
  gcloud builds submit --tag gcr.io/kube-201219/ggr:1.0.8
  gcloud beta run deploy --image gcr.io/kube-201219/ggr:1.0.8 --region=us-central1
