#!/bin/bash

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

INSTALL_UBUNTU_16_04 () {
    echo " ";
    echo "${BLUE}${BOLD}Apt-Get Update & Upgrade ${WHITE}${NORMAL} (Update and upgrade all packets)"
    echo " ";
    sleep 3;
    sudo apt-get update && apt-get upgrade

    echo " ";
    echo "${BLUE}${BOLD}Apt-Get Install: Pkg-Config ${WHITE}${NORMAL} (Helper tool used when compiling applications and libraries)"
    echo " ";
    sleep 3;
    sudo apt-get install pkg-config

    echo " ";
    echo "${BLUE}${BOLD}Apt-Get Install:${WHITE}${NORMAL}";
    echo " ${BLUE}  g++ ${WHITE}(C++ compiler)";
    echo " ${BLUE}  cmake ${WHITE}(Tool to build, test and package software)";
    echo " ${BLUE}  git ${WHITE}(Distributed version control of software)";
    echo " ${BLUE}  uvcdynctrl ${WHITE}(Dynamic control of webcams)";
    echo " ${BLUE}  libzmqpp3 libzmqpp-dev ${WHITE}(Library which implements socket interfaces)";
    echo " ${BLUE}  protobuf-compiler libprotobuf-dev ${WHITE}(Mechanism for serializing structured data)";
    echo " ${BLUE}  qt5-qmake qtbase5-dev qtdeclarative5-dev libqt5webkit5-dev ${WHITE}(Framework for applications and user interfaces)";
    echo " ${BLUE}  libsqlite3-dev ${WHITE}(Embeddable, zero-configuration SQL database engine)"
    echo " ${BLUE}  doxygen graphviz graphviz graphviz-dev ${WHITE}(Generator of documentation and graphs)"
    echo " ${BLUE}  libboost-all-dev ${WHITE}(Peer-reviewed portable C++ source libraries)"
    echo " ${BLUE}  freeglut3 freeglut3-dev ${WHITE}(OpenGL Utility Toolkit (GLUT) library)"
    echo " ${BLUE}  libbullet-dev ${WHITE}(Physics Library)"
    echo " ";
    sleep 5;
    sudo apt-get install g++ cmake git uvcdynctrl libzmqpp3 libzmqpp-dev protobuf-compiler libprotobuf-dev qt5-qmake qtbase5-dev qtdeclarative5-dev libqt5webkit5-dev libsqlite3-dev doxygen graphviz graphviz graphviz-dev libboost-all-dev freeglut3 freeglut3-dev libbullet-dev

    echo " ";
    echo "${BLUE}${BOLD}Install from Github: OpenCV${WHITE}${NORMAL} (Library of real-time computer vision)";
    echo " ";
    sleep 3;
    git clone https://github.com/Itseez/opencv.git
    cd opencv
    mkdir build && cd build
    cmake ..
    make -j8
    sudo make install
    sudo ldconfig
    cd ..
    cd ..
    echo " ";
}

INSTALL_UBUNTU_14_04 () {
    echo " ";
    echo "${BLUE}${BOLD}Apt-Get Update & Upgrade ${WHITE}${NORMAL} (Update and upgrade all packets)"
    echo " ";
    sleep 3;
    sudo apt-get update && apt-get upgrade

    echo " ";
    echo "${BLUE}${BOLD}Apt-Get Install: Pkg-Config ${WHITE}${NORMAL} (Helper tool used when compiling applications and libraries)"
    echo " ";
    sleep 3;
    sudo apt-get install pkg-config

    echo " ";
    echo "${BLUE}${BOLD}Apt-Get Install:${WHITE}${NORMAL}";
    echo " ${BLUE}  g++ ${WHITE}(C++ compiler)";
    echo " ${BLUE}  cmake ${WHITE}(Tool to build, test and package software)";
    echo " ${BLUE}  git ${WHITE}(Distributed version control of software)";
    echo " ${BLUE}  uvcdynctrl ${WHITE}(Dynamic control of webcams)";
    echo " ${BLUE}  libzmq3 libzmq3-dev ${WHITE}(Library which implements socket interfaces)";
    echo " ${BLUE}  protobuf-compiler libprotobuf-dev ${WHITE}(Mechanism for serializing structured data)";
    echo " ${BLUE}  qt5-qmake qtbase5-dev qtdeclarative5-dev libqt5webkit5-dev ${WHITE}(Framework for applications and user interfaces)";
    echo " ${BLUE}  libsqlite3-dev ${WHITE}(Embeddable, zero-configuration SQL database engine)"
    echo " ${BLUE}  doxygen graphviz graphviz graphviz-dev ${WHITE}(Generator of documentation and graphs)"
    echo " ${BLUE}  libboost-all-dev ${WHITE}(Peer-reviewed portable C++ source libraries)"
    echo " ${BLUE}  freeglut3 freeglut3-dev ${WHITE}(OpenGL Utility Toolkit (GLUT) library)"
    echo " ${BLUE}  libbullet-dev ${WHITE}(Physics Library)"
    echo " ";
    sleep 5;
    sudo apt-get install g++ cmake git uvcdynctrl libzmq3 libzmq3-dev protobuf-compiler libprotobuf-dev qt5-qmake qtbase5-dev qtdeclarative5-dev libqt5webkit5-dev libsqlite3-dev doxygen graphviz graphviz graphviz-dev libboost-all-dev freeglut3 freeglut3-dev libbullet-dev

    echo " ";
    echo "${BLUE}${BOLD}Install from Github: OpenCV${WHITE}${NORMAL} (Library of real-time computer vision)";
    echo " ";
    sleep 3;
    git clone https://github.com/Itseez/opencv.git
    cd opencv
    mkdir build && cd build
    cmake ..
    make -j8
    sudo make install
    sudo ldconfig
    cd ..
    cd ..
    echo " ";
}

INSTALL_DEBIAN () {
    echo "TODO";
}

INSTALL () {
    if [[ "$DISTRO" == "Ubuntu" ]]; then
        if [[ "$RELEASE" == "16.04" ]]; then
            INSTALL_UBUNTU_16_04;
        else
            INSTALL_UBUNTU_14_04;
        fi    
    else
        echo "unknow"
    fi
}

CONFIGURE_REPOSITORIES () {
    echo " ";
    echo "${PURPLE}${BOLD}Download All Projects ${WHITE}${NORMAL} (VSS-Vision, VSS-Simulator, VSS-Viewer, VSS-SampleStrategy, VSS-Joystick)";
    echo " ";
    sleep 2;
    git submodule init
    git submodule update

    echo " ";
    echo "${PURPLE}${BOLD}Update, Configure and Compiling VSS-Vision ${WHITE}${NORMAL} (Computer Vision System for IEEE Very Small Size [Soccer])";
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
    echo "${PURPLE}${BOLD}Update, Configure and Compiling VSS-Simulator ${WHITE}${NORMAL} (Simulator for IEEE Very Small Size [Soccer])";
    echo " ";
    sleep 2; 
    cd VSS-Simulator
    git submodule init
    git submodule update
    make proto
    make
    cd ..

    echo " ";
    echo "${PURPLE}${BOLD}Update, Configure and Compiling VSS-Viewer ${WHITE}${NORMAL} (3D Viewer for the VSS-Vision and VSS-Simulator)";
    echo " ";
    sleep 2;
    cd VSS-Viewer
    git submodule init
    git submodule update
    make proto
    make
    cd ..

    echo " ";
    echo "${PURPLE}${BOLD}Update, Configure and Compiling VSS-SampleStrategy ${WHITE}${NORMAL} (Sample of Strategy that works with VSS-Vision and VSS-Simulator)";
    echo " ";
    sleep 2;
    cd VSS-SampleStrategy
    git submodule init
    git submodule update
    make proto
    make
    cd ..

    echo " ";
    echo "${PURPLE}${BOLD}Update, Configure and Compiling VSS-Joystick ${WHITE}${NORMAL} (Sample of how control robots on VSS-Simulator and Real Robots with a Dualshock 3 (PS3 Controller))";
    echo " ";
    sleep 2;
    cd VSS-Joystick
    git submodule init
    git submodule update
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

INFO_MESSAGE;

INSTALL;

CONFIGURE_REPOSITORIES;

EXIT_MESSAGE;

