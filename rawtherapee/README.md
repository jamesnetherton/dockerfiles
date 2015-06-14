# Docker Rawtherapee

Docker image for [Rawtherapee](http://rawtherapee.com/).

## Starting a Rawtherapee container

```
docker run -v /tmp/.X11-unix/:/tmp/.X11-unix/ -e DISPLAY=${DISPLAY} jamesnetherton/rawtherapee
```
