# Method 1: Filter CSV File Where Column Equals String
#awk is pattern scanning, -f is define separator, $1 is first column
awk -F "," '$1 == "Mavs"' data1.csv > data2.csv
#-------------------------------------------------#
#filter column 2 that has value greater than 20
awk -F "," '$2 > 20' data1.csv > data2.csv
#-------------------------------------------------#
#print column
awk -F "," '{print $3}' data1.csv
#-------------------------------------------------#
#print many columns
awk -F "," '{print $3,$1}' data1.csv
#-------------------------------------------------#
#print many columns without separator
awk -F "," '{print $3 $1}' data1.csv
#-------------------------------------------------#
#print many columns with separator
awk -F "," '{print $3 "," $1}' data1.csv
#-------------------------------------------------#
#print many columns with separator
awk -F "," '{print $3 "," $1}' data1.csv > data3.csv


#try this yourself
# (grep Mavs data1.csv)(grep -c Mavs data1.csv)
# (grep -e Lakers -e Mavs data1.csv)
# (grep -c -e Lakers -e Mavs data1.csv)

