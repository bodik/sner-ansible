#!/bin/sh          
set -e

cd /opt/cvesearch || exit 1

. venv/bin/activate
./sbin/db_mgmt_cpe_dictionary.py -p
./sbin/db_mgmt_json.py -p
./sbin/db_updater.py -c

systemctl restart cvesearch
