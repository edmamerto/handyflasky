# Source code directory from the host system
HOST_SRC_DIR?=$(PWD)
# Source code directory inside the container
CONTAINER_SRC_DIR?=/app
# Docker image to use for building
CONTAINER_IMAGE?=edmamerto/handyflasky
# Name of the build container
CONTAINER_NAME?=handyflasky
# Flag to remove or detach container
CONTAINER_DETACH:=-d
CONTAINER_REMOVE:=--rm
FLAG?=$(CONTAINER_REMOVE)
# Network config
HOST_PORT?=5000
CONTAINER_PORT?=5000

# Base docker run command
DOCKER=docker run $(FLAG) \
	-v $(HOST_SRC_DIR):$(CONTAINER_SRC_DIR) \
	--name $(CONTAINER_NAME) \
	-p $(HOST_PORT):$(CONTAINER_PORT) $(CONTAINER_IMAGE)

.PHONY: all
all: build

.PHONY: run
run:
	$(eval FLAG += $(CONTAINER_DETACH))
	$(DOCKER) make -f build.make run

.PHONY: test
test: clean
	$(DOCKER) make -f build.make test

.PHONY: clean
clean:
	docker stop $(CONTAINER_NAME) || echo "No container to clean up"

.PHONY: build
build: test run
	@echo '######################'
	@echo App ran successfully!
	@echo '######################'