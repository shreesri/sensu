#!/bin/bash

targetDir="/etc/sensu/conf.d/"
searstring="Hostname"
repleacestring="172.16.1.35"
if [ -d $targetDir ];
then
        cd $targetDir
        for file in $(grep -il $searstring test*)
        do
                sed -e "s/$searstring/$repleacestring/ig" $file > /tmp/tempfile.tmp
                mv /tmp/tempfile.tmp $file
        done
fi
