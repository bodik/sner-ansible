#!/bin/sh
# dev helper

kibana_backup.sh
cp /usr/local/share/kibana-data.json roles/snerlytics.elk/files/kibana/kibana-data.json

