#REPO?=kubespheredev/ks-installer
REPO?=registry-edge.cosmoplat.com/d3os/ks-installer
#TAG:=$(shell git rev-parse --abbrev-ref HEAD)-dev
# 版本号每次递增小版本
TAG:=v3.1.1.1
build:
	docker build . --file Dockerfile --tag $(REPO):$(TAG)
push:
	docker push $(REPO):$(TAG)
all: build push
