# Docker XChat

Docker image for [XChat](http://xchat.org/)

## Starting a XChat container

```
docker run -v /tmp/.X11-unix:/tmp/.X11-unix -v ${HOME}/.xchat:/home/xchat/config -e DISPLAY=${DISPLAY} jamesnetherton/xchat
```

