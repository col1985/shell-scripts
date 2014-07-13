#!/bin/bash
#
############################################################
#
# .deploy-android.sh
#
# This script is automate deploying a Cordova Andoird app
# on device by removing existing apk using adb, building a 
# new apk using cordova cli, installing the apk on device 
# and finally launching the app.
#
############################################################

# varibales
buildpath=$1
pkgname=$2
launch=$3

# clean
function startClean {
    printf '\n\n'
    echo '******************************** Removing old apk from Device ********************************'

    printf '\n\n'
    
    rm $buildpath

    adb shell pm uninstall -k $pkgname
    
    printf '\n\n'
}

#build
function startBuild {
    echo '***************************** Preparing and Building apk binary ******************************'

    printf '\n\n'

    cordova prepare android

    cordova -d build android
    
    printf '\n\n'
}

#deploy
function startDeploy {
    echo '*************************** Deploying and installing app on device ***************************'

    printf '\n\n'

    adb install -r $buildpath

    adb shell am start -n $pkgname/$pkgname.$launch

    printf '\n\n'
}

function main {
    startClean $buildpath $pkgname

    startBuild

    startDeploy $buildpath $pkgname $launch
}

# invoke script passing 3 arguments
main $1 $2 $3
