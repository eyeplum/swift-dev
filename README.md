# swift-dev
Docker image for running the latest Swift development snapshot on a Ubuntu 14.04 container.

## About

The result docker image is based on Ubuntu 14.04 with the latest open source Swift development snapshot installed.

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

## Use this image to develop Swift.org projects

If you want to build / test Swift.org projects, first pull this image from docker hub:

```
docker pull eyeplum/swift-dev
```

Make sure the Swift.org projects is already cloned somewhere on your host machine.

Then you can start a new container with a shared docker _Data volume_ that contains the Swift.org projects:

```
docker run -it \
    -v <path to swift.org projects>:<path to access data volume in container> \
    eyeplum/swift-dev \
    /bin/bash
```

In my experience, at least 4GB of memory is needed for building Swift, but the default memory is 2GB for docker machines.

So make sure you tweak the configurations before jump into the container and build Swift, otherwise you may encounter an error similar to this:

```
clang: error: unable to execute command: Killed

clang: error: linker command failed due to signal (use -v to see invocation)

ninja: build stopped: subcommand failed.
```

Here is a [stackoverflow answer](http://stackoverflow.com/a/34598900/1258521) for how to do that.

## Acknowledgement

The `Dockerfile` is inspired by [this blog](https://developer.ibm.com/swift/2015/12/15/running-swift-within-docker/) from Swift@__IBM__.

