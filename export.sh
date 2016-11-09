#!/bin/bash
#
# This file is part of the VSS-SDK project.
#
# This Source Code Form is subject to the terms of the GNU GENERAL PUBLIC LICENSE,
# v. 3.0. If a copy of the GPL was not distributed with this
# file, You can obtain one at http://www.gnu.org/licenses/gpl-3.0/.
#

WHITE=$(tput setaf 15)
RED=$(tput setaf 9)
YELLOW=$(tput setaf 11)
GREEN=$(tput setaf 2)
PURPLE=$(tput setaf 5)
BLUE=$(tput setaf 12)
BOLD=$(tput bold)
NORMAL=$(tput sgr0)


echo "${WHITE}${BOLD}-----------------------------------------------------------------"
echo "- IEEE Very Small Size [Soccer] Suite Development Kit (VSS-SDK) -";
echo "-----------------------------------------------------------------"
echo "${NORMAL}${YELLOW}Exporting VSS-SampleStrategy to Strategies ...";
echo " ";
echo "${YELLOW}${BOLD}Name of Strategy:${NORMAL}";
read NAME_STRATEGY;

echo "${YELLOW}${BOLD}Author:${NORMAL}";
read NAME_AUTHOR;
echo $NAME_AUTHOR;

echo "${YELLOW}${BOLD}Comment About:${NORMAL}";
read COMMENT;

echo "${YELLOW}${BOLD}Compress Strategy? (Y/N)${NORMAL}";
read COMPRESS;
DATE=`date`

cp VSS-SampleStrategy/VSS-SampleStrategy Strategies/$NAME_STRATEGY

echo $DATE >> Strategies/$NAME_STRATEGY.txt
echo "Strategy: " $NAME_STRATEGY >> Strategies/$NAME_STRATEGY.txt
echo "Author:" $NAME_AUTHOR >> Strategies/$NAME_STRATEGY.txt
echo "Comment: " $COMMENT >> Strategies/$NAME_STRATEGY.txt

if [[ "$COMPRESS" == "Y" || "$COMPRESS" == "y" ]]; then
    tar -zcvf $NAME_STRATEGY.tar.gz VSS-SampleStrategy
    mv $NAME_STRATEGY.tar.gz Strategies
fi