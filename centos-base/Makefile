IMAGE_NAME = tkp/base/centos-base
REGISTRY = registry.it.taikang.com

.PHONY: build
build:
	docker pull centos:centos7
	docker tag centos:centos7 tkp/base/centos:centos7
	docker build -t $(IMAGE_NAME) .
	docker tag $(IMAGE_NAME) $(REGISTRY)/$(IMAGE_NAME)
