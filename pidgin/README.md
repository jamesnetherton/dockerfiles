# Docker Pidgin

[Pidgin](https://www.pidgin.im/) with Docker.

## Starting a Pidgin container

```
docker run \
   -e DISPLAY=$DISPLAY \
   -v /tmp/.X11-unix:/tmp/.X11-unix \
   -v ${HOME}/.pidgin:/home/pidgin/config \
   jamesnetherton/pidgin
```
