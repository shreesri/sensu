# *****************************************************************************************

!/bin/bash
# **************** Change Variables Here ************
startdirectory="/etc/sensu/conf.d"
searchterm="Hostname"
replaceterm="172.16.1.26"
# **********************************************************

echo "***************************************************"
echo "* Search and Replace in Files Version 19-Jan-2018 *"
echo "***************************************************"

i=0;

  for files in $(ls $startdirectory | awk '{print $9}'| grep -l -R $searchterm)
    do
      sed -i -e 's/'$searchterm'/'$replaceterm'/g' $files


    let i++;

      echo "Modified: " $file
    done

echo " *** All Done! *** Modified files:" $i
