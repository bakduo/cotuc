#!/bin/bash

source /home/proxytunnel/source.sh

ssh -T -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -i $FILE_KEY $USER_DESTINY@$HOST_DESTINY -L 0.0.0.0:$PORT_LOCAL:$HOST_DESTINY:$PORT_DESTINY -N