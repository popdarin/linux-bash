# Basic cmd  -> zip [file_name.zip] [file_name]

#Basic zip
touch file_for_zip.c
zip fie_for_zip.zip file_for_zip.c
unzip fie_for_zip.zip

#Move zip
touch file{0..5}.txt
zip -m myfile.zip *.txt #move into zip
unzip myfile.zip







