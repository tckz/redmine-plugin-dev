#!/bin/bash

dbname=redmine
out=/backup/$dbname-`date +%Y%m%d-%H%M%S`.gz

docker-compose exec -ti redmine-mysql bash -c "mysqldump --user root --password=\$MYSQL_ROOT_PASSWORD --column-statistics=0 $dbname | gzip -c > $out"


