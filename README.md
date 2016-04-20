# swift-dev
Docker image for running the latest Swift development snapshot in a Ubuntu 14.04 container.

## About

The docker image is based on Ubuntu 14.04 with the latest open source Swift development snapshot installed.

## Use this image to play with Swift

If you just want to play with the latest Swift development snapshot, first pull this image from docker hub:

```
docker pull eyeplum/swift-dev
```

When the image is ready, you can start a new container using:

```
# --privileged is required if you want to run Swift REPL in the container
docker run -it --privileged eyeplum/swift-dev /bin/bash
```

## Acknowledgement

The `Dockerfile` is inspired by [this blog](https://developer.ibm.com/swift/2015/12/15/running-swift-within-docker/) from Swift@__IBM__.

