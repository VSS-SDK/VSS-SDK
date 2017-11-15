#!/bin/bash
#
# This file is part of the VSS-SDK project.
#
# This Source Code Form is subject to the terms of the GNU GENERAL PUBLIC LICENSE,
# v. 3.0. If a copy of the GPL was not distributed with this
# file, You can obtain one at http://www.gnu.org/licenses/gpl-3.0/.
#

source install/ubuntu17-10.sh
source install/ubuntu16-04.sh
source install/ubuntu14-04.sh
source install/debian8-2.sh
source install/debian8-5.sh

DISTRO=`lsb_release -si`
RELEASE=`lsb_release -sr`
ARCHITECTURE=`uname -m`

WHITE=$(tput setaf 15)
RED=$(tput setaf 9)
YELLOW=$(tput setaf 11)
GREEN=$(tput setaf 2)
PURPLE=$(tput setaf 5)
BLUE=$(tput setaf 12)
BOLD=$(tput bold)
NORMAL=$(tput sgr0)
INSTALLED=0

export DISTRO
export RELEASE
export ARCHITECTURE

export WHITE
export RED
export YELLOW
export GREEN
export PURPLE
export BLUE
export BOLD
export NORMAL
export INSTALLED


# PRINT THE MAIN MESSAGE
MAIN_MESSAGE () {
    echo "${WHITE}${BOLD}--------------------------------------------------------------------------";
    echo " Installing IEEE Very Small Size [Soccer] Suite Development Kit (VSS-SDK) ";
    echo "--------------------------------------------------------------------------${NORMAL}";

    echo " ${RED} If any error occur, ${BOLD}PLEASE${NORMAL}${RED}, create a ${BOLD}ISSUE${NORMAL}${RED} on our ${BOLD}GITHUB${NORMAL}${RED} repository";
    echo " ${WHITE}${BOLD} https://github.com/SIRLab/VSS-SDK/issues ${NORMAL}${RED}and tell us. We'll fix soon.";
    echo "";
}

# PRINT THE INFO MESSAGE
INFO_MESSAGE () {
    echo "${YELLOW}${BOLD}Linux information:${NORMAL}";
    echo " ${YELLOW}  Distro: " $DISTRO;
    echo " ${YELLOW}  Release: " $RELEASE;
    echo " ${YELLOW}  Architecture: " $ARCHITECTURE;
    echo "${WHITE}"
    sleep 5;
}


INSTALL () {
    if [[ "$DISTRO" == "Ubuntu" ]]; then
        if [[ "$RELEASE" == "16.04" ]]; then
            INSTALL_UBUNTU_16_04;
        else
            if [[ "$RELEASE" == "14.04" ]]; then
                INSTALL_UBUNTU_14_04;
            else
              if [[ "$RELEASE" == "17.10" ]]; then
                  INSTALL_UBUNTU_17_10;
              else
                  echo "${RED}${BOLD}Ubuntu Unknown";
              fi
            fi
        fi
    else
        if [[ "$DISTRO" == "Debian" ]]; then
            if [[ "$RELEASE" == "8.5" ]]; then
                INSTALL_DEBIAN_8_5;
            else
                if [[ "$RELEASE" == "8.2" ]]; then
                    INSTALL_DEBIAN_8_2;
                else
                    echo "${RED}${BOLD}Debian Unknown";
                fi

            fi
        else
            echo "${RED}${BOLD}Linux Unknown"
        fi
    fi
}


MAIN_MESSAGE;

INFO_MESSAGE;

INSTALL;

if [ $INSTALLED == 1 ]; then
    ./init.sh
    ./update.sh
else
     echo "${NORMAL}${RED}Exiting ...${WHITE}";
fi
