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
    echo "${PURPLE}${BOLD}Download All Projects ${WHITE}${NORMAL} (VSS-Vision, VSS-Simulator, VSS-Viewer, VSS-SampleStrategy, VSS-Joystick)";
    echo " ";
    sleep 2;
    git submodule init
    git submodule update

    echo " ";
    echo "${PURPLE}${BOLD}Update, Configure and Compile VSS-Vision ${WHITE}${NORMAL} (Computer Vision System for IEEE Very Small Size [Soccer])";
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
    echo "${PURPLE}${BOLD}Update, Configure and Compile VSS-Simulator ${WHITE}${NORMAL} (Simulator for IEEE Very Small Size [Soccer])";
    echo " ";
    sleep 2; 
    cd VSS-Simulator
    git submodule init
    git submodule update
    make proto
    make
    cd ..

    echo " ";
    echo "${PURPLE}${BOLD}Update, Configure and Compile VSS-Viewer ${WHITE}${NORMAL} (3D Viewer for the VSS-Vision and VSS-Simulator)";
    echo " ";
    sleep 2;
    cd VSS-Viewer
    git submodule init
    git submodule update
    make proto
    make
    cd ..

    echo " ";
    echo "${PURPLE}${BOLD}Update, Configure and Compile VSS-SampleStrategy ${WHITE}${NORMAL} (Sample of Strategy that works with VSS-Vision and VSS-Simulator)";
    echo " ";
    sleep 2;
    cd VSS-SampleStrategy
    git submodule init
    git submodule update
    make proto
    make
    cd ..

    echo " ";
    echo "${PURPLE}${BOLD}Update, Configure and Compile VSS-Joystick ${WHITE}${NORMAL} (Sample of how control robots on VSS-Simulator and Real Robots with a Dualshock 3 (PS3 Controller))";
    echo " ";
    sleep 2;
    cd VSS-Joystick
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