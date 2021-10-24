#!/bin/sh
instances=$(playerctl --list-all)
for i in $instances
do
  echo $i
done
