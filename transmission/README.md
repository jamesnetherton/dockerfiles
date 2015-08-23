# Docker Transmission

[Transmission](http://www.transmissionbt.com/) with Docker.

## Starting a Transmission container

```
docker run -it \
   -e DISPLAY=$DISPLAY \
   -v /tmp/.X11-unix:/tmp/.X11-unix \
   -v ${HOME}/Downloads:/downloads \
   -v ${HOME}/.local:/home/transmission/.local 
   -v ${HOME}/.config:/home/transmission/.config 
   -v ${HOME}/.cache:/home//transmission/.cache
   jamesnetherton/transmission
```
