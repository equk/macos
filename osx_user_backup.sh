#!/bin/bash
#
# sync users picture and documents directories with external drive
#
# syntax - osx_user_backup.sh /path/to/drive
#
# note: make sure you do not leave a trailing /
#
# GNU General Public License﻿http://www.gnu.org/licenses/
#
# blog.equk.co.uk
# ﻿                                                  
#                                      -oo-         
#                                      +MMo         
#      .:+o+:`   `:+o/-+o+  +oo`  ooo  +MMo .oo+.   
#     oNNs+hMd- :mMmyydMMm  mMM`  MMM  +MMs/mMh:    
#    :MMmyyhMMy mMM-  .MMm  mMM`  MMM  +MMmNMh`     
#    -NMmo//++- hMMo..+MMm  dMM/.:MMM  +MMd+NMd-    
#     :ymmmmdh` .smNmdyMMm  -dNNmhhMN  +MMo :mMN+   
#       `...``    `..``MMm   ``.` `..  `..`  `...   
#                     `NNd                          
#                                                   


# Colors
blue="\033[1;34m"
green="\033[1;32m"
red="\033[1;31m"
bold="\033[1;37m"
reset="\033[0m"

# Variables
DOCUMENTS=/Users/$USER/Documents
PICTURES=/Users/$USER/Pictures
EXCLUDES=/Users/$USER/scripts/osxbackup/excludes
TARGET=$1/backup/osx/Users/$USER
LOG=/Users/$USER/scripts/osxbackup/log.txt
LOG2=/Users/$USER/scripts/osxbackup/log2.txt

# load banner
echo -e "# "
echo -e "# osx_user_backup Copyright (C) 2011 equk"
echo -e "# This program comes with ABSOLUTELY NO WARRANTY."
echo -e "# This is free software, and you are welcome to redistribute it"
echo -e "# under certain conditions. See GNU GPLv3."

# check for input
if [ -d "$1" ]
then
	echo -e "# "
    echo -e "$blue:: $reset Starting Sync Process to: $1"
else
	echo -e "# "
    echo -e "# $red !!!ERROR!!! $reset No valid input given"
    echo -e "# $green syntax: $reset osx_user_backup.sh /path/to/drive"
    echo -e "# $red note: $reset make sure you do not leave a trailing /"
    echo -e "# "
    echo -e "# blog.equk.co.uk"
    echo -e "# "
    exit 1
fi
# check if backup dir exists
if [[ ! -e "$TARGET" ]]; then
            mkdir -p "$TARGET"
fi
# display banner

# sync documents
echo -e "$blue:: $reset Backing up Documents Folder"
rsync -av --delete --exclude-from=$EXCLUDES $DOCUMENTS "$TARGET" &> $LOG
echo -e "$green:: $reset Documents Sync Complete"
echo -e "$green:: $reset log saved to $LOG"

# sync pictures
echo -e "$blue:: $reset Backing up Pictures Folder"
rsync -av --delete --exclude-from=$EXCLUDES $PICTURES "$TARGET" &> $LOG2
echo -e "$green:: $reset Pictures Sync Complete"
echo -e "$green:: $reset log saved to $LOG2"
