#!/bin/bash
set -e

/wait-for-it.sh mysql:3306 -t 30
light-swift -a master -u master -k $SWIFT_PASSWORD -f $SWIFT_TOKEN -b mysql -t "[\"mysql://root:$MYSQL_ROOT_PASSWORD@mysql/lightswift\"]" -s filesystem -o '["/tmp/lightswiftstorage"]'
