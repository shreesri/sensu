#!/bin/bash

targetDir="/etc/sensu/conf.d/"
searstring="Hostname"
REPLACESTRING=$1
if [ -d $targetDir ];
then
        cd $targetDir
        for file in $(grep -il $searstring test*)
        do
                sed -e "s/$searstring/$REPLACESTRING/ig" $file > /tmp/tempfile.tmp
                mv /tmp/tempfile.tmp $file
        done
fi
