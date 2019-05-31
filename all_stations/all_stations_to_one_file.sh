#!/bin/sh

DEST_FILE=./all_stations.csv

if [ -d "./all_stations" ]
then
    cd ./all_stations
fi

ALL_CSV=$(find . -name "*_features.csv")
FIRST=$(echo $ALL_CSV | tr " " "\n" | head -1)

head -1 $FIRST > $DEST_FILE

for i in $(find . -name $ALL_CSV);
    do tail +2 $i >> $DEST_FILE;
done
