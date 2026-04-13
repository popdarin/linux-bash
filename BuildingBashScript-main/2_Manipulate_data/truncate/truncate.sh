#!/usr/bin/env bash
echo "how many line do you want?"
read line
count=1
while [ $count -le $line ]
do
	echo "$count $RANDOM" >> file.txt
	((count++))
done

# (head file.txt) (head -n 3 file.txt)
# (tail file.txt)(tail -n 1 file.txt)
# (shuf -n 3 file.txt > smallfile.txt)

