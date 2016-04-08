# rpi-telegraf

Docker image containing InfluxData Telegraf compatible with the Raspberry Pi.

### Example: Run and attach the Docker image with a volume mount.
If telegraf.conf doesn't exist in the mounted folder, an example will be created on startup.
```bash
mkdir -p /data/docker/telegraf
docker run -ti -v /data/docker/telegraf:/data apicht/rpi-telegraf
```

