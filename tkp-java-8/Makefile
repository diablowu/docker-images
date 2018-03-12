
IMAGE_NAME = tkp/java/8
REGISTRY = registry.it.taikang.com

.PHONY: build
build:
	docker build -t $(IMAGE_NAME) .
	docker tag $(IMAGE_NAME) $(REGISTRY)/$(IMAGE_NAME)
