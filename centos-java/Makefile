IMAGE_NAME = tkp/base/centos-java
REGISTRY = registry.it.taikang.com

.PHONY: build
build:
	docker build -t $(IMAGE_NAME) .
	docker tag $(IMAGE_NAME) $(REGISTRY)/$(IMAGE_NAME)

