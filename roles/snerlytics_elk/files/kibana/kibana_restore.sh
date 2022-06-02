#!/bin/sh

elasticdump \
	--input=/usr/local/share/kibana-data.json \
	--output=http://127.0.0.1:9200/.kibana \
	--type=data
