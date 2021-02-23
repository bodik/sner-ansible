#!/bin/sh

elasticdump \
	--input=http://127.0.0.1:9200/.kibana \
	--output=/usr/local/share/kibana-data.json \
	--type=data \
	--overwrite
