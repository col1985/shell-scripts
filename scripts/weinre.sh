#!/bin/bash
#
############################################################
#
# .weinre.sh
#
# Pass the your networks ip address as a param to start a
# weinre server for on device debugging.
#
############################################################

# Variables
ip=$1

# start weirne by passing network ip
function start {
    printf '\n\n'
    echo '******************************** starting weinre ********************************'

    printf '\n'

    weinre --boundHost $ip --debug
    
    printf '\n'

    echo '******************************** closing weinre ********************************' 
    printf '\n\n'
}

# invoke start passing ip param
start $1


