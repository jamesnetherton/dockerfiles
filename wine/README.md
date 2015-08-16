# Docker Wine

An image for [Wine](https://www.winehq.org/). It is intended that this
image is extended to Dockerize wine compatible applications.

Since the `ENTRYPOINT` is sent to /usr/bin/wine, child images need only supply a `CMD`
to the path of the .exe file to run.

```
docker run -ti -v /tmp/.X11-unix/:/tmp/.X11-unix/ -e DISPLAY=${DISPLAY} jamesnetherton/wine calc.exe
```
