

#find last modify
find . -name "*.png" -mtime +5 #(file modified 5 days ago.)
find . -name "*.png" -mtime -5 #(file modified less than 5 days ago.)
find . -name "*.png" -mtime 5 #(file modified exact 5 days.)

#find specific size (G, M, K ,c )
find . -size -250M
find . -size +250M
du -sh linux_image.png

#find x permission file
ls -l
find . -perm /+x ! -name '.*' -type f

#find and delete
find . -name "*.png" -delete

#find and word count
find . -name "*.csv" -type f -exec wc -c "{}" \; #{} each filename  \ escaped ; indicate the end of the parameter
find . -name "*.csv" -type f -exec wc -c "{}" \+ # sum wc 
find . -name "*.csv" -type f -print0 | xargs -0 wc

#find and chmod
find . -name "*.sh" -exec chmod +x '{}' \;


