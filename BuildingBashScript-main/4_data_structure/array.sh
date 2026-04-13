#!/usr/bin/env bash
declare -a array=("bird" "lion" "ant")
for i in "${array[@]}"
do
	echo "${i} is an animal"
done