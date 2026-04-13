# sort unique
echo -e "Bird\nLion\nAnt" 
echo -e "Bird\nLion\nAnt" > animals.txt
echo -e "Bird\nLion\nAnt" | sort | uniq -c
#(filtering by grep)
echo -e "Bird\nLion\nAnt\nBird" | sort | uniq -c | grep Bird
#(filtering by rev)
echo 1234 | rev