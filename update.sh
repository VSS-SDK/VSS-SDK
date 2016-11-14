#!/bin/bash
#
# This file is part of the VSS-SDK project.
#
# This Source Code Form is subject to the terms of the GNU GENERAL PUBLIC LICENSE,
# v. 3.0. If a copy of the GPL was not distributed with this
# file, You can obtain one at http://www.gnu.org/licenses/gpl-3.0/.
#

# Define as cores utilizadas
WHITE=$(tput setaf 15)
RED=$(tput setaf 9)
YELLOW=$(tput setaf 11)
GREEN=$(tput setaf 2)
PURPLE=$(tput setaf 5)
BLUE=$(tput setaf 12)
BOLD=$(tput bold)
NORMAL=$(tput sgr0)


# Printa a mensagem inicial
MAIN_MESSAGE () {
    echo "${WHITE}${BOLD}------------------------------------------------------------------------";
    echo " Updating IEEE Very Small Size [Soccer] Suite Development Kit (VSS-SDK) ";
    echo "------------------------------------------------------------------------${NORMAL}";

    echo " ${RED} If any error occur, ${BOLD}PLEASE${NORMAL}${RED}, create a ${BOLD}ISSUE${NORMAL}${RED} on our ${BOLD}GITHUB${NORMAL}${RED} repository";
    echo " ${WHITE}${BOLD} https://github.com/SIRLab/VSS-SDK/issues ${NORMAL}${RED}and tell us. We'll fix soon.";
    echo ""; 
}

# Atualiza o VSS-Vision
UPDATE_VISION () {
    echo " ";
    echo "${PURPLE}${BOLD}Update VSS-Vision ${WHITE}${NORMAL} (A Computer Vision System made for Recognize and tracking robots and ball of competition of Robot Soccer IEEE Very Small Size)";
    echo " ";
    sleep 2;
    cd VSS-Vision
    git reset --hard HEAD
    git pull https://github.com/SIRLab/VSS-Vision.git 
    cd src/VSS-Interface
    git pull https://github.com/SIRLab/VSS-Interface.git
    cd ..
    cd ..
    make proto
    make qt
    make
    cd ..
}

# Atualiza o VSS-Simulator
UPDATE_SIMULATOR () {
    echo " ";
    echo "${PURPLE}${BOLD}Update VSS-Simulator ${WHITE}${NORMAL} (A Simulator for the competition of Robot Soccer IEEE Very Small Size)";
    echo " ";
    sleep 2; 
    cd VSS-Simulator
    git reset --hard HEAD
    git pull https://github.com/SIRLab/VSS-Simulator.git
    cd src/VSS-Interface
    git pull https://github.com/SIRLab/VSS-Interface.git
    cd ..
    cd ..
    make proto
    make
    cd ..
}

# Atualiza o VSS-Viewer
UPDATE_VIEWER() {
    echo " ";
    echo "${PURPLE}${BOLD}Update VSS-Viewer ${WHITE}${NORMAL} (A 3D Software of visualization of states given by VSS-Simulator and VSS-Vision)";
    echo " ";
    sleep 2;
    cd VSS-Viewer
    git reset --hard HEAD
    git pull https://github.com/SIRLab/VSS-Viewer.git
    cd src/VSS-Interface
    git pull https://github.com/SIRLab/VSS-Interface.git
    cd ..
    cd ..
    make proto
    make
    cd ..
}

# Atualiza o VSS-SampleStrategy
UPDATE_SAMPLE () {
    echo " ";
    echo "${PURPLE}${BOLD}Update VSS-Samples ${WHITE}${NORMAL} (Samples of code written in various languages which communicates with the VSS-SDK)";
    echo " ";
    sleep 2;
    cd VSS-Samples
    cd VSS-SampleCpp
    git reset --hard HEAD
    git pull https://github.com/SIRLab/VSS-SampleCpp.git
    cd src/VSS-Interface
    git pull https://github.com/SIRLab/VSS-Interface.git
    cd ..
    cd ..
    make proto
    make
    cd ..
    cd VSS-SampleRust
    git reset --hard HEAD
    git pull https://github.com/SIRLab/VSS-SampleRust.git
    cd src/VSS-Interface
    git pull https://github.com/SIRLab/VSS-Interface.git
    cd ..
    cd ..
    make proto
    make
    cd ..
    cd ..
}

# Atualiza o VSS-Joystick
UPDATE_JOYSTICK () {
    echo " ";
    echo "${PURPLE}${BOLD}Update VSS-Joystick ${WHITE}${NORMAL} (A simple way to send commands for robots on VSS-Simulator or real robots. You can use ANY Joystick via USB.)";
    echo " ";
    sleep 2;
    cd VSS-Joystick
    git reset --hard HEAD
    git pull https://github.com/SIRLab/VSS-Joystick.git
    cd src/VSS-Interface
    git pull https://github.com/SIRLab/VSS-Interface.git
    cd ..
    cd ..
    make proto
    make
    cd ..
}

# Atualiza o VSS-GameLogger
UPDATE_LOGGER () {
    echo " ";
    echo "${PURPLE}${BOLD}Update VSS-GameLogger ${WHITE}${NORMAL} (A log generator/reader of a match executed on the VSS-Vision and VSS-Simulator)";
    echo " ";
    sleep 2;
    cd VSS-GameLogger
    git reset --hard HEAD
    git pull https://github.com/SIRLab/VSS-GameLogger.git
    cd src/VSS-Interface
    git pull https://github.com/SIRLab/VSS-Interface.git
    cd ..
    cd ..
    make proto
    make
    cd ..
}

# Atualiza todos os repositórios
UPDATE_REPOSITORIES () {
    UPDATE_VISION;
    UPDATE_SIMULATOR;
    UPDATE_VIEWER;
    UPDATE_SAMPLE;
    UPDATE_JOYSTICK;
    UPDATE_LOGGER;

    git pull
}

# Mensagem de saída
EXIT_MESSAGE () {
    echo " ";
    echo "${GREEN}${BOLD}DONE!${WHITE}${NORMAL} (Give a feedback on our Github, and see run.sh and update.sh)";
    echo " ";
    sleep 2
}


MAIN_MESSAGE;

UPDATE_REPOSITORIES;

EXIT_MESSAGE;