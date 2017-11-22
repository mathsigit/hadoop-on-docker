#!/bin/bash

#$1= cluster master hostname

echo "Editing Hadoop Configuration ..."
find /opt/hadoop/etc/hadoop/*.xml | xargs -i sed -i s/{MASTER}/$1/g {}
