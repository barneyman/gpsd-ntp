#!/bin/sh

rm -f /var/run/chrony/chronyd.pid
gpsd -G -D 2 -n /dev/ttyS0 /dev/pps0
chronyd -d -s 




