#!/bin/bash

##################################################################################
############################ Instal or Update Discord ############################
###################################### ARTPHIL ###################################
##################################################################################

SOURCE_FILE=discord.deb

# Go to the temp folder
cd /tmp

# Download the latest Discord source archive
wget 'https://discord.com/api/download?platform=linux&format=deb' -O $SOURCE_FILE

# Install Discord
apt install ./$SOURCE_FILE

# Remove source archive
rm SOURCE_FILE

# Go back home
cd
