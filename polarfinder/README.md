# Docker Polar Finder

Polar Finder on Linux with Docker and Wine. Helps identify where Polaris will be at a given, latitude, longitude, date and time.


## Starting a Polar Finder container

```
docker run -it
           -e DISPLAY=$DISPLAY
           -v /tmp/.X11-unix:/tmp/.X11-unix
           -v /etc/localtime:/etc/localtime:ro
           jamesnetherton/polarfinder
```
