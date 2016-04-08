#!/bin/bash

# Generate sample config file if no file provided
if [ ! -f /data/telegraf.conf ]
then
    telegraf -sample-config > /data/telegraf.conf
fi

telegraf -config /data/telegraf.conf
