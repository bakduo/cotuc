#!/bin/bash

TIMESTAMP=$(date +%s)

echo "INFO LAUNCH: $TIMESTAMP" > /home/proxytunnel/app.log

sudo /usr/bin/supervisord -n --configuration=/etc/supervisor/supervisord.conf