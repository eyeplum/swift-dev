# swift-dev

Swift docker container for running the latest Swift development snapshot on Ubuntu.

## About

This is a repo for hosting docker automated build.

The result docker image is based on Ubuntu 15.10 with the latest open source Swift development snapshot installed.

## Howto

To use `swift-dev`, first pull it from docker hub:

```
docker pull eyeplum/swift-dev
```

After the build finishes, you can start a new container using:

```
# --privileged is required if you want to run Swift REPL in the container
docker run -it --privileged eyeplum/swift-dev /bin/bash
```

## Known Issues

- Swift REPL seems broken after updated to development snapshot 2016-03-24-a

## Acknowledgement

The `Dockerfile` is inspired by [this blog](https://developer.ibm.com/swift/2015/12/15/running-swift-within-docker/) from Swift@__IBM__.
