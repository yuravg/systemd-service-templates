#!/usr/bin/env bash

# This script write a message to systemd journal,
# it's used with the systemd example timestamp-example.service
#
# This script should be locate in: /usr/local/bin/

SCRIPT_NAME=$(basename "${BASH_SOURCE##*/}")
MSG="$SCRIPT_NAME (service script)"

printf "\e[32m\e[1m%s\e[0m\n" "$MSG started!" | systemd-cat

while true; do
    TIMESTAMP=$(date +%Y-%m-%d--%H-%M-%S)
    echo "Hello from $SCRIPT_NAME (service script)! Date: $TIMESTAMP" | systemd-cat
    sleep 5
done
