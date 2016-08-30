#!/bin/bash

WHITE=$(tput setaf 15)
RED=$(tput setaf 9)
YELLOW=$(tput setaf 11)
GREEN=$(tput setaf 2)
PURPLE=$(tput setaf 5)
BLUE=$(tput setaf 12)
BOLD=$(tput bold)
NORMAL=$(tput sgr0)

STATUS_VISION=0
STATUS_VIEWER=0
STATUS_JOYSTICK=0
STATUS_SIMULATOR=0
STATUS_YELLOW_TEAM=0
STATUS_BLUE_TEAM=0
EXECUTION_OK=1

MAIN_MESSAGE () {
    echo "${WHITE}${BOLD}-----------------------------------------------------------------"
    echo "- IEEE Very Small Size [Soccer] Suite Development Kit (VSS-SDK) -";
    echo "-----------------------------------------------------------------"
}

MAN () {
    echo "${WHITE}${BOLD} - MANUAL - ";
    echo " ";
    echo "${YELLOW}${BOLD}------------------------------------------------------"
    echo "- Comandos simples para abrir um projeto de cada vez -";
    echo "------------------------------------------------------"
    echo "${BLUE}Abrir o Manual:";
    echo " ${WHITE} ./run.sh";
    echo " ";
    
    echo "${BLUE}Abrir o VSS-Vision:";
    echo " ${WHITE} ./run.sh ${GREEN} vision";
    echo " ";
    
    echo "${BLUE}Abrir o VSS-Simulator (sem ambiente 3D):"
    echo " ${WHITE} ./run.sh ${GREEN} sim";
    echo " ";

    echo "${BLUE}Abrir o VSS-Viewer:"
    echo " ${WHITE} ./run.sh ${GREEN} viewer";
    echo " ";

    echo "${BLUE}Abrir o VSS-Joystick com robos reais:"
    echo " ${WHITE} ./run.sh ${GREEN} joy";
    echo " ";
    
    echo "${BLUE}Abrir o VSS-SampleStrategy com robos reais:"
    echo " ${WHITE} ./run.sh ${GREEN} sample1";
    echo " ";

    echo "${YELLOW}------------------------------------------------------------"
    echo "- Comandos compostos para abrir varios projetos de uma vez -";
    echo "------------------------------------------------------------"

    echo "${BLUE}Abrir o VSS-Vision com uma Estrategia (Rotina de Jogo):";
    echo " ${WHITE} ./run.sh ${GREEN} vision  sample1";
    echo " ";

    echo "${BLUE}Abrir o VSS-Vision (com Ambiente 3D):";
    echo " ${WHITE} ./run.sh ${GREEN} vision  viewer";
    echo " ";

    echo "${BLUE}Abrir o VSS-Simulator (com Ambiente 3D):";
    echo " ${WHITE} ./run.sh ${GREEN} sim  viewer";
    echo " ";

    echo "${BLUE}Abrir o VSS-Simulator (sem Ambiente 3D) com Duas Estrategias se Enfrentando:";
    echo " ${WHITE} ./run.sh ${GREEN} sim  yellow=sample1  blue=sample2";
    echo " ";

    echo "${BLUE}Abrir o VSS-Simulator (com Ambiente 3D) com Duas Estrategias se Enfrentando:";
    echo " ${WHITE} ./run.sh ${GREEN} sim  viewer  yellow=sample1  blue=sample2";
    echo " ";

    echo "${BLUE}Abrir o VSS-Simulator (com Ambiente 3D) com o VSS-Joystick:";
    echo " ${WHITE} ./run.sh ${GREEN} sim  viewer  joy";
    echo " ";

    echo "${BLUE}Abrir o VSS-Simulator (com Ambiente 3D) com o VSS-Joystick Jogando Contra uma Estrategia (TODO):";
    echo " ${WHITE} ./run.sh ${GREEN} sim  viewer  yellow=joy  blue=sample1";
    echo " ";
}

CHECK_VISION () {
    if [[ "$1" == "vision" ]]; then
        STATUS_VISION=1
    fi;
}

CHECK_VIEWER () {
    if [[ "$1" == "viewer" ]]; then
        STATUS_VIEWER=1
    fi
}

CHECK_JOYSTICK () {
    if [[ "$1" == "joy" ]]; then
        STATUS_JOYSTICK=1
    fi
}

CHECK_SIMULATOR () {
    if [[ "$1" == "sim" ]]; then
        STATUS_SIMULATOR=1
    fi
}

MAIN_MESSAGE;

if [ $# -eq 0 ]; then
    MAN;
else
    echo "${WHITE}${BOLD} - EXECUCAO - ";
    echo " ";
    # Check all inputs
    for i in $*; do 
        CHECK_VISION $i
        CHECK_VIEWER $i
        CHECK_JOYSTICK $i
        CHECK_SIMULATOR $i
    done
    
    # Check invalid combinations
    if [ $STATUS_VISION == 1 ]; then
        if [ $STATUS_SIMULATOR == 1 ]; then
            echo "${RED}${BOLD}[ERRO DE COMBINACAO]: ${WHITE}VSS-Vision e VSS-Simulator nao podem ser abertos ao mesmo tempo."
            EXECUTION_OK=0
        fi
    fi

    if [ $EXECUTION_OK == 1 ]; then
        # Open VSS-Vision
        if [ $STATUS_VISION == 1 ]; then
            cd VSS-Vision
            make run &
            cd ..
        fi

        # Open VSS-Simulator
        if [ $STATUS_SIMULATOR == 1 ]; then
            cd VSS-Simulator
            make run &
            cd ..
        fi

        # Open VSS-Viewer
        if [ $STATUS_VIEWER == 1 ]; then
            cd VSS-Viewer
            make run &
            cd ..
        fi

        # Open VSS-Joystick
        if [ $STATUS_JOYSTICK == 1 ]; then
            cd VSS-Joystick
            make run &
            cd ..
        fi

    else
        echo "${NORMAL}${RED}Finalizando ..."
    fi
fi

