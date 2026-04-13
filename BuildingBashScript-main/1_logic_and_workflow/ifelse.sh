#!/bin/sh
echo "What animal do you like?"
read animal

if [ "$animal" = "Lion" ]; then
	echo "$animal is very powerful!"
elif [ "$animal" = "bird" ]; then
	echo "$animal is pretty"
else 
	echo "$animal is not recoginzed"
fi