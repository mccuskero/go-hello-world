# go-hello-world
working with docker makefiles, rancher desktop and podman builds

## Build the image

```
make build
```

## Run the container

```
make run
```

## If configured, debug container, with shell

```
make exec
```
### You may need to clean up the conatiner

```
podman container stop hello-world
podman container rm hello-world
```
