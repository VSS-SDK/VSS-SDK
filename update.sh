#!/bin/bash

WHITE=$(tput setaf 15)
RED=$(tput setaf 9)
YELLOW=$(tput setaf 11)
GREEN=$(tput setaf 2)
PURPLE=$(tput setaf 5)
BLUE=$(tput setaf 12)
BOLD=$(tput bold)
NORMAL=$(tput sgr0)


# PRINT THE MAIN MESSAGE
MAIN_MESSAGE () {
    echo "${WHITE}${BOLD}------------------------------------------------------------------------";
    echo " Updating IEEE Very Small Size [Soccer] Suite Development Kit (VSS-SDK) ";
    echo "------------------------------------------------------------------------${NORMAL}";

    echo " ${RED} If any error occur, ${BOLD}PLEASE${NORMAL}${RED}, create a ${BOLD}ISSUE${NORMAL}${RED} on our ${BOLD}GITHUB${NORMAL}${RED} repository";
    echo " ${WHITE}${BOLD} https://github.com/SIRLab/VSS-SDK/issues ${NORMAL}${RED}and tell us. We'll fix soon.";
    echo ""; 
}

UPDATE_REPOSITORIES () {
    echo " ";
    echo "${PURPLE}${BOLD}Update VSS-Vision ${WHITE}${NORMAL} (Computer Vision System for IEEE Very Small Size [Soccer])";
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

    echo " ";
    echo "${PURPLE}${BOLD}Update VSS-Simulator ${WHITE}${NORMAL} (Simulator for IEEE Very Small Size [Soccer])";
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

    echo " ";
    echo "${PURPLE}${BOLD}Update VSS-Viewer ${WHITE}${NORMAL} (3D Viewer for the VSS-Vision and VSS-Simulator)";
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

    echo " ";
    echo "${PURPLE}${BOLD}Update VSS-SampleStrategy ${WHITE}${NORMAL} (Sample of Strategy that works with VSS-Vision and VSS-Simulator)";
    echo " ";
    sleep 2;
    cd VSS-SampleStrategy
    git reset --hard HEAD
    git pull https://github.com/SIRLab/VSS-SampleStrategy.git
    cd src/VSS-Interface
    git pull https://github.com/SIRLab/VSS-Interface.git
    cd ..
    cd ..
    make proto
    make
    cd ..

    echo " ";
    echo "${PURPLE}${BOLD}Update VSS-Joystick ${WHITE}${NORMAL} (Sample of how control robots on VSS-Simulator and Real Robots with a Dualshock 3 (PS3 Controller))";
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

EXIT_MESSAGE () {
    echo " ";
    echo "${GREEN}${BOLD}DONE!${WHITE}${NORMAL} (Give a feedback on our Github, and see run.sh and update.sh)";
    echo " ";
    sleep 2
}


MAIN_MESSAGE;

UPDATE_REPOSITORIES;

EXIT_MESSAGE;