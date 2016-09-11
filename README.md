# docker-carbon-cache #
Minimal image based on `python:2.7.12-alpine` with carbon-aggregator daemon running.

## Base usage ##
```
docker run -p 2023:2023 -p 2024:2024 mateuszm/carbon-cache
```

## Configuration ##
You can configure `DESTINATIONS` via environment variable with same names.
If you need some not standard configuration copy your own carbon-cache config:

```
COPY carbon.conf $GRAPHITE_CONF_DIR/carbon.conf
```
or mount it into container.

By default no `aggregation-rules.conf` is supplied. If you need one COPY it to
image:
```
COPY aggregation-rules.conf $GRAPHITE_CONF_DIR/aggregation-rules.conf
```
or mount it into container.

Config files (Everything in $GRAPHITE_CONF_DIR) are formated by image's 
entrypoint with environment as keys, so you can dynamically change it's contents
by using environment variables in braces, e.g:

```
DESTINATIONS = {DESTINATIONS}
```