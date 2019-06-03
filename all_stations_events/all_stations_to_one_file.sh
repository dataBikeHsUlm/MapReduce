#!/bin/sh

DEST_FILE=./all_stations_events.csv

if [ -d "./all_stations_events" ]
then
    cd ./all_stations_events
fi

ALL_CSV=$(find . -name "*_events.csv")
FIRST=$(echo $ALL_CSV | tr " " "\n" | head -1)

head -1 $FIRST > $DEST_FILE

for i in $ALL_CSV;
    do tail +2 $i | head -360 >> $DEST_FILE;
done
