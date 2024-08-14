#!/bin/bash

##################################################################################
############################ Instal or Update Discord ############################
###################################### ARTPHIL ###################################
##################################################################################

SOURCE_FILE=discord.deb

# Check if is super user
if [ $(id -u) -ne 0 ] 
  then echo "Please run as root"
  exit
fi

# Go to the temp folder
cd /tmp

# Download the latest Discord source archive
echo "Dowload files ..."
wget 'https://discord.com/api/download?platform=linux&format=deb' -O $SOURCE_FILE

# Install Discord
echo "Installing ..."
apt install ./$SOURCE_FILE

# Remove source archive
echo "Removing files ..."
rm $SOURCE_FILE

# Go back
echo "Done"
cd ..
