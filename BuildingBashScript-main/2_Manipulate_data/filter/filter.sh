#!/usr/bin/env bash
echo "how many line do you want?"
read line

declare -a array=("bird" "lion" "ant")
count=1
while [ $count -le $line ]
do
	rand=$RANDOM%3
	echo "$count ${array[$rand]}" >> filterfile.txt
	((count++))
done

# (grep bird filterfile.txt)(grep -c bird filterfile.txt)
# (grep -e bird -e lion filterfile.txt)
# (grep -c -e bird -e lion filterfile.txt)
# (grep -v bird  filterfile.txt | grep -c bird)
# (grep -v bird  filterfile.txt | grep -c lion)