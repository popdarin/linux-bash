
# 1.1. Reading Records From a File
# #!/bin/bash
# while read line
# do
#    echo "Record is : $line"
# done < input.csv

# -------------------------------------------------#
# 2.1. Ignoring the Header Line
# #!/bin/bash
# while read line
# do
#    echo "Record is : $line"
# done < <(tail -n +2  input.csv)

#-------------------------------------------------#
# 2.2. Ignoring the Header Line
# exec command to change the standard input to read from the file. 
#Then we used the read command to process the header line.

# #!/bin/bash
# exec < input.csv  
# read header
# while read line
# do
#    echo "Record is : $line"
# done  

#-------------------------------------------------#
# 3.1. From All Columns
# #Input Field Separator (IFS)
# #! /bin/bash
# while IFS="," read -r rec_column1 rec_column2 rec_column3 rec_column4
# do
#   echo "Displaying Record-$rec_column1"
#   echo "Quantity: $rec_column2"
#   echo "Price: $rec_column3"
#   echo "Value: $rec_column4"
#   echo ""
# done < <(tail -n +2 input.csv)

#-------------------------------------------------#
# 3.2. From the First Few Columns
# #! /bin/bash
# while IFS="," read -r rec_column1 rec_column2 rec_remaining
# do
#   echo "Displaying Record-$rec_column1"
#   echo "Quantity: $rec_column2"
#   echo "Remaining fields of Record-$rec_column1 : $rec_remaining"
#   echo ""
# done < <(tail -n +2 input.csv)

#-------------------------------------------------#
# 4. Mapping Columns of CSV File into Bash Arrays
# #! /bin/bash
# arr_record1=( $(tail -n +2 input.csv | cut -d ',' -f1) )
# arr_record2=( $(tail -n +2 input.csv | cut -d ',' -f2) )
# arr_record3=( $(tail -n +2 input.csv | cut -d ',' -f3) )
# arr_record4=( $(tail -n +2 input.csv | cut -d ',' -f4) )
# echo "array of SNos  : ${arr_record1[@]}"
# echo "array of Qty   : ${arr_record2[@]}"
# echo "array of Price : ${arr_record3[@]}"
# echo "array of Value : ${arr_record4[@]}"

#-------------------------------------------------#
#5. Parsing CSV File Into a Bash Array
# #! /bin/bash 
# arr_csv=() 
# while IFS= read -r line 
# do
#     arr_csv+=("$line")
# done < input.csv

# echo "Displaying the contents of array mapped from csv file:"
# index=0
# for record in "${arr_csv[@]}"
# do
#     echo "Record at index-${index} : $record"
# 	((index++))
# done