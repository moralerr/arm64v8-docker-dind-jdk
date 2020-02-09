#!/bin/sh
/usr/local/bin/dockerd-entrypoint.sh > /usr/local/bin/docker-entry.log 2>&1 &
echo "Let the docker daemon start."
sleep 30
echo "done."

