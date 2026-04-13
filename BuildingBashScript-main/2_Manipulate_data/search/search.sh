#Basic find fomat file
find . -name "*.sh"
find . -name "*.png"
find . -name "*.zip"

#Basic find all file
find . -name "*.*"
find . -type f -print

#Basic find empty file
find . -type f -empty

#Basic fine specific in file
find /workspaces/BuildingBashScript/2_Manipulate_data -type f

#Basic fine specific in folder
find /workspaces/BuildingBashScript/2_Manipulate_data -type d