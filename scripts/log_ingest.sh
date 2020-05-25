#!/bin/bash
echo "Backing up Logs!"
rsync -avzu /tintin/logs/ /home/tintin/logs/

for i in `ls /tintin/logs/*.log`;do 
	echo "Beginning ingest of $i"
	author=`basename $i | awk -F _ '{print $1}'`;
	timestamp=$(echo "[`date '+%Y:%m:%d %H:%M:%S'`]");
	logfile=`basename $i`
	mysql -hlocalhost -utintin -pfloobity -Dtintin -Be "load DATA LOCAL INFILE '/tintin/logs/${logfile}' INTO TABLE raw_logs fields TERMINATED BY '\n' (@col1) set contents=@col1, author='$author', timestamp='$timestamp'";
	rm -vf /tintin/logs/$logfile
done
