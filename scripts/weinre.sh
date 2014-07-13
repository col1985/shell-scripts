#!/bin/bash
#
############################################################
#
# .weinre.sh
#
#
#
############################################################

# Variables
ip=$1

# start weirne by passing network ip
function start {
    printf '\n\n'
    echo '******************************** Starting Weire ********************************'

    printf '\n'

    weinre --boundHost $ip --debug
    
    printf '\n\n'
}

# invoke start passing ip param
start $1


