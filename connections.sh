#!/bin/sh

while true;do
  netstat -anp | grep ::ffff|awk '{print $4}'|sort|uniq|wc -l >/var/log/ssnum;
  sleep 2;
done

