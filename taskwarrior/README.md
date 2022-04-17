# Docker Taskwarrior

[Taskwarrior](http://taskwarrior.org/) with Docker.

## Starting a Taskwarrior container

```
docker run -it \
           -v ${HOME}/.taskrc:/root/.taskrc \
           -v ${HOME}/.task:/root/.task \
           -v /etc/localtime:/etc/localtime:ro \
           jamesnetherton/taskwarrior
```

The `ENTRYPOINT` is configured as `task` which means you can pass command line options to Taskwarrior like so.

### Add a task

```
docker run -it \
           -v ${HOME}/.taskrc:/root/.taskrc \
           -v ${HOME}/.task:/root/.task \
           -v /etc/localtime:/etc/localtime:ro \
           jamesnetherton/taskwarrior add "Test task"
```

### List tasks

```
docker run -it \
           -v ${HOME}/.taskrc:/root/.taskrc \
           -v ${HOME}/.task:/root/.task \
           -v /etc/localtime:/etc/localtime:ro \
           jamesnetherton/taskwarrior list
```

### List all command line options

```
docker run -it \
           -v ${HOME}/.taskrc:/root/.taskrc \
           -v ${HOME}/.task:/root/.task \
           -v /etc/localtime:/etc/localtime:ro \
           jamesnetherton/taskwarrior help
```
