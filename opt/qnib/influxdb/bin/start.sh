#!/bin/bash

BIND_HOST=${CHRONOGRAF_BIND_HOST:-0.0.0.0}
BIND_PORT=${CHRONOGRAF_BIND_PORT:-8888}
INFLUXDB_USERNAME=${INFLUXDB_USERNAME:-root}
INFLUXDB_PASSWORD=${INFLUXDB_PASSWORD:-root}

mkdir -p /var/lib/influxdb/

chronograf --bolt-path=/var/lib/influxdb/bolt.db --host=${BIND_HOST} --port=${BIND_PORT} --influxdb-url=http://${INFLUXDB_HOST}:${INFLUXDB_PORT}
