#!/bin/bash

mypath=`cd $(dirname $0) && /bin/pwd`
dir_backup=$mypath/backup

if [[ ! -f $dir_backup ]]
then
	mkdir -p $dir_backup
fi

cd $dir_backup

dbname=redmine
loginpath=mydb2
out=$loginpath-$dbname-`date +%Y%m%d-%H%M%S`.gz

mysqldump --login-path=$loginpath --column-statistics=0 $dbname | gzip -c > $out



