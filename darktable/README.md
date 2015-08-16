# Docker Darktable

[Darktable](http://www.darktable.org/) with Docker.

## Starting a Darktable container

```
docker run -it \
   -e DISPLAY=$DISPLAY \
   -v /tmp/.X11-unix:/tmp/.X11-unix \
   --device /dev/dri/card0 \
   jamesnetherton/darktable
```
