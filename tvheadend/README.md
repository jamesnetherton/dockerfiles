# Docker Tvheadend for Raspberry Pi

## Starting a Tvheadend container

To run the latest [Tvheadend](https://github.com/tvheadend/tvheadend) release version do:

```
docker run --device /dev/dvb/adapter0 -p 9981:9981 -p 9982:9982 jamesnetherton/tvheadend
```

Change the `--device` argument as appropriate for your TV tuner device.

