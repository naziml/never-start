#!/bin/bash
service ssh start
for (( ; ; ))
do
   >&2 echo "$(date) I am still here ... "
   sleep 10
done
