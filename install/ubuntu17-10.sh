#!/bin/bash
#
# This file is part of the VSS-SDK project.
#
# This Source Code Form is subject to the terms of the GNU GENERAL PUBLIC LICENSE,
# v. 3.0. If a copy of the GPL was not distributed with this
# file, You can obtain one at http://www.gnu.org/licenses/gpl-3.0/.
#

INSTALL_UBUNTU_17_10 () {
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
    echo " ${BLUE}  doxygen graphviz graphviz-dev ${WHITE}(Generator of documentation and graphs)"
    echo " ${BLUE}  libboost-all-dev ${WHITE}(Peer-reviewed portable C++ source libraries)"
    echo " ${BLUE}  freeglut3 freeglut3-dev ${WHITE}(OpenGL Utility Toolkit (GLUT) library)"
    echo " ${BLUE}  libbullet-dev ${WHITE}(Physics Library)"
    echo " ${BLUE}  curl ${WHITE}(Transfer of data)"
    echo " ${BLUE}  rustc cargo${WHITE}(Rust compiler and package manager)"
    echo " ";
    sleep 5;
    sudo apt-get install g++ cmake git uvcdynctrl libzmq5 libzmqpp4 libzmqpp-dev protobuf-compiler libprotobuf-dev qt5-qmake qtbase5-dev qtdeclarative5-dev libqt5webkit5-dev libsqlite3-dev doxygen graphviz graphviz-dev libboost-all-dev freeglut3 freeglut3-dev libbullet-dev rustc cargo curl

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
    INSTALLED=1
}
