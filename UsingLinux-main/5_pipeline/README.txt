#example using pipeline
STR=$"line1\nline2\nline3"
echo -e "$STR"
echo -e "$STR" | sort -r | grep 3 > string.txt

#example using and logic
false && touch falsefile.txt
true && touch falsefile.txt

#example using append
echo "I love you" > append.txt
echo "I love myself" > append.txt
echo "I love you" >> append.txt

#exzmple using null
ls -l /wrong/path 2> /dev/null

#example using history
history ! !!


