#!/bin/bash

#Wait for database to be available
set -e
host=$(env | grep _TCP_ADDR | head -1 | cut -d = -f 2)
port=$(env | grep _TCP_PORT | head -1 | cut -d = -f 2)
echo -n "Waiting for TCP connection to $host:$port..."
while ! nc $host $port >/dev/null 2>&1 < /dev/null; do
  echo -n .
  sleep 5
done

# Delegate starting of services to Supervisord
/usr/bin/supervisord -c docker/supervisord.conf