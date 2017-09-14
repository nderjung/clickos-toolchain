CONTAINER_NAME=a1exanderjung/clickos-toolchain
CONTAINER_VERSION=0.1.2

.PHONY: build clean

container:
	@echo "Building container..."
	docker build \
		-t $(CONTAINER_NAME):$(CONTAINER_VERSION) \
		.

run:
	@echo "Running..."
	docker run -it --rm \
		$(CONTAINER_NAME):$(CONTAINER_VERSION)

clean:
	@echo "Cleaning..."
