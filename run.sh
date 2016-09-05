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
YELLOW_NAME=0
BLUE_NAME=0
EXECUTION_OK=1

MAIN_MESSAGE () {
    echo "${WHITE}${BOLD}-----------------------------------------------------------------"
    echo "- IEEE Very Small Size [Soccer] Suite Development Kit (VSS-SDK) -";
    echo "-----------------------------------------------------------------${NORMAL}"
}

MAN () {
    echo "${WHITE}${BOLD} - MANUAL - ";
    echo " ";
    echo "${YELLOW}-------------------------------------"
    echo "- Comandos que podem ser utilizados -";
    echo "-------------------------------------"

    echo "${BLUE}Abrir o Manual:";
    echo " ${WHITE} ./run.sh";
    echo " ";

    echo "${BLUE}Abrir o VSS-Vision:";
    echo " ${WHITE} ./run.sh ${GREEN} vision";
    echo " ";

    echo "${BLUE}Abrir o VSS-Joystick controlando robos reais:";
    echo " ${WHITE} ./run.sh ${GREEN} joy";
    echo " ";

    echo "${BLUE}Abrir o VSS-Vision com uma Estrategia (Rotina de Jogo):";
    echo " ${WHITE} ./run.sh ${GREEN} vision  sample1";
    echo " ";

    echo "${BLUE}Abrir o VSS-Vision com o VSS-Joystick controlado robos reais:";
    echo " ${WHITE} ./run.sh ${GREEN} vision  joy";
    echo " ";

    echo "${BLUE}Abrir o VSS-Vision (com Ambiente 3D):";
    echo " ${WHITE} ./run.sh ${GREEN} vision  viewer";
    echo " ";

    echo "${BLUE}Abrir o VSS-Vision (com Ambiente 3D) com uma Estratégia (Rotina de Jogo):";
    echo " ${WHITE} ./run.sh ${GREEN} vision  viewer  sample1";
    echo " ";

    echo "${BLUE}Abrir o VSS-Vision (com Ambiente 3D) com o VSS-Joystick controlando robos reais:";
    echo " ${WHITE} ./run.sh ${GREEN} vision  viewer  joy";
    echo " ";

    echo "${BLUE}Abrir o VSS-Simulator (com Ambiente 3D):";
    echo " ${WHITE} ./run.sh ${GREEN} sim  viewer";
    echo " ";

    echo "${BLUE}Abrir o VSS-Simulator (sem Ambiente 3D) com Duas Estrategias se Enfrentando:";
    echo " ${WHITE} ./run.sh ${GREEN} sim  yellow=sample1  blue=sample2";
    echo " ";

    echo "${BLUE}Abrir o VSS-Simulator (com Ambiente 3D) com Uma Estratégia em Teste:";
    echo " ${WHITE} ./run.sh ${GREEN} sim  viewer  sample1";
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

CHECK_YELLOW () {
    OUTPUT_YELLOW=$(echo "$1" | grep 'yellow=')
    if [[ "$OUTPUT_YELLOW" != "" ]]; then
        STATUS_YELLOW_TEAM=1
        YELLOW_NAME=$OUTPUT_YELLOW
        YELLOW_NAME=$(echo $YELLOW_NAME | cut -d"=" -f 2)
    fi
}

CHECK_BLUE () {
    OUTPUT_BLUE=$(echo "$1" | grep 'blue=')
    if [[ "$OUTPUT_BLUE" != "" ]]; then
        STATUS_BLUE_TEAM=1
        BLUE_NAME=$OUTPUT_BLUE
        BLUE_NAME=$(echo $BLUE_NAME | cut -d"=" -f 2)
    fi
}

intexit() {
    # Kill all subprocesses (all processes in the current process group)
    kill -HUP -$$
}

hupexit() {
    # HUP'd (probably by intexit)
    echo
    echo "Interrupted"
    exit
}

trap hupexit HUP
trap intexit INT

MAIN_MESSAGE;

if [ $# -eq 0 ]; then
    MAN;
else
    echo "${WHITE}${BOLD} - EXECUCAO - ${NORMAL}";

    # Check all inputs
    for i in $*; do 
        CHECK_VISION $i
        CHECK_VIEWER $i
        CHECK_JOYSTICK $i
        CHECK_SIMULATOR $i
        CHECK_YELLOW $i
        CHECK_BLUE $i
    done
    
    # Check invalid combinations
    if [ $STATUS_VISION == 1 ]; then
        if [ $STATUS_SIMULATOR == 1 ]; then
            echo " ";
            echo "${RED}${BOLD}[ERRO DE COMBINACAO]: ${WHITE}VSS-Vision e VSS-Simulator nao podem ser abertos ao mesmo tempo."
            EXECUTION_OK=0
        fi
    fi

    if [ $EXECUTION_OK == 1 ]; then
        # Open VSS-Vision
        if [ $STATUS_VISION == 1 ]; then
            echo " ";
            echo "${GREEN}${BOLD}[EXECUTANDO]: ${WHITE}VSS-Vision${NORMAL}"
            cd VSS-Vision
            make run &
            cd ..
        fi

        # Open VSS-Simulator
        if [ $STATUS_SIMULATOR == 1 ]; then
            echo " ";
            echo "${GREEN}${BOLD}[EXECUTANDO]: ${WHITE}VSS-Simulator${NORMAL}"
            cd VSS-Simulator
            make run &
            cd ..
        fi

        # Open VSS-Viewer
        if [ $STATUS_VIEWER == 1 ]; then
            echo " ";
            echo "${GREEN}${BOLD}[EXECUTANDO]: ${WHITE}VSS-Viewer${NORMAL}"
            cd VSS-Viewer
            make run &
            cd ..
        fi

        # Open VSS-Joystick
        if [ $STATUS_JOYSTICK == 1 ]; then
            echo " ";
            echo "${GREEN}${BOLD}[EXECUTANDO]: ${WHITE}VSS-Joystick${NORMAL}"
            cd VSS-Joystick
            make run &
            cd ..
        fi

        # Open Yellow Strategy
        if [ $STATUS_YELLOW_TEAM == 1 ]; then
            echo " ";
            echo "${GREEN}${BOLD}[EXECUTANDO]: ${WHITE}Yellow Strategy${NORMAL}"
            cd Strategies
            ./$YELLOW_NAME -c yellow &
            cd ..
        fi

        # Open Blue Strategy
        if [ $STATUS_BLUE_TEAM == 1 ]; then
            echo " ";
            echo "${GREEN}${BOLD}[EXECUTANDO]: ${WHITE}Blue Strategy${NORMAL}"
            cd Strategies
            ./$BLUE_NAME -c blue &
            cd ..
        fi

        wait;
    else
        echo "${NORMAL}${RED}Finalizando ...";
    fi
fi



