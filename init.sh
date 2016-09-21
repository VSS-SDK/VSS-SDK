#!/bin/bash

WHITE=$(tput setaf 15)
RED=$(tput setaf 9)
YELLOW=$(tput setaf 11)
GREEN=$(tput setaf 2)
PURPLE=$(tput setaf 5)
BLUE=$(tput setaf 12)
BOLD=$(tput bold)
NORMAL=$(tput sgr0)

CONFIGURE_REPOSITORIES () {
    echo " ";
    echo "${PURPLE}${BOLD}Download All Projects ${WHITE}${NORMAL} (VSS-Vision, VSS-Simulator, VSS-Viewer, VSS-SampleStrategy, VSS-Joystick, VSS-GameLogger)";
    echo " ";
    sleep 2;
    git submodule init
    git submodule update

    echo " ";
    echo "${PURPLE}${BOLD}Update, Configure and Compile VSS-Vision ${WHITE}${NORMAL} (A Computer Vision System made for Recognize and tracking robots and ball of competition of Robot Soccer IEEE Very Small Size)";
    echo " ";
    sleep 2;
    cd VSS-Vision
    git submodule init
    git submodule update
    make proto
    make qt
    make
    cd ..

    echo " ";
    echo "${PURPLE}${BOLD}Update, Configure and Compile VSS-Simulator ${WHITE}${NORMAL} (A Simulator for the competition of Robot Soccer IEEE Very Small Size)";
    echo " ";
    sleep 2; 
    cd VSS-Simulator
    git submodule init
    git submodule update
    make proto
    make
    cd ..

    echo " ";
    echo "${PURPLE}${BOLD}Update, Configure and Compile VSS-Viewer ${WHITE}${NORMAL} (A 3D Software of visualization of states given by VSS-Simulator and VSS-Vision)";
    echo " ";
    sleep 2;
    cd VSS-Viewer
    git submodule init
    git submodule update
    make proto
    make
    cd ..

    echo " ";
    echo "${PURPLE}${BOLD}Update, Configure and Compile VSS-SampleStrategy ${WHITE}${NORMAL} (A Sample of Strategy that gets data from VSS-Simulator and VSS-Vision)";
    echo " ";
    sleep 2;
    cd VSS-SampleStrategy
    git submodule init
    git submodule update
    make proto
    make
    cd ..

    echo " ";
    echo "${PURPLE}${BOLD}Update, Configure and Compile VSS-Joystick ${WHITE}${NORMAL} (A simple way to send commands for robots on VSS-Simulator or real robots. You can use ANY Joystick via USB)";
    echo " ";
    sleep 2;
    cd VSS-Joystick
    git submodule init
    git submodule update
    make proto
    make
    cd ..

    echo " ";
    echo "${PURPLE}${BOLD}Update, Configure and Compile VSS-GameLogger ${WHITE}${NORMAL} (A log generator/reader of a match executed on the VSS-Vision and VSS-Simulator)";
    echo " ";
    sleep 2;
    cd VSS-GameLogger
    git submodule init
    git submodule update
    make proto
    make
    cd ..
}

echo "${WHITE}${BOLD}----------------------------------------------------------------------------";
echo " Initializing IEEE Very Small Size [Soccer] Suite Development Kit (VSS-SDK) ";
echo "----------------------------------------------------------------------------${NORMAL}";

CONFIGURE_REPOSITORIES;