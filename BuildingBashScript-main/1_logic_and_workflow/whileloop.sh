#!/usr/bin/env bash
echo "how many loop do you want?"
read loop
count=1
while [ $count -le $loop ]
do
	echo 'loop#' $count
	((count++))
done