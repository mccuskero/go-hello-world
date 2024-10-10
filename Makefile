VERSION ?= $(shell cat VERSION)
APP_NAME = hello-world

ifeq ($(shell command -v podman 2> /dev/null),)
    CMD=docker
else
    CMD=podman
endif

# Build the docker image
build:
	${CMD} build -t $(APP_NAME):$(VERSION) .

# Run the docker container
run:
	${CMD} run -d --name $(APP_NAME) $(APP_NAME):$(VERSION)

exec:
	${CMD} exec -it $(APP_NAME) /bin/sh

# Push the docker image to the registry
push:
	${CMD} push $(APP_NAME):$(VERSION)

clean:
	${CMD} rm -f $(APP_NAME)
	${CMD} rmi -f $(APP_NAME):$(VERSION)

