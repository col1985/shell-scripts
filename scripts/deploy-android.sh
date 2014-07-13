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

# clean
function startClean {
    printf '\n\n'
    echo '******************************** Removing old apk from Device ********************************'

    printf '\n\n'
    
    rm platforms/android/bin/example-debug.apk

    adb shell pm uninstall -k com.example.app
    
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

    adb install -r platforms/android/bin/example-debug.apk

    adb shell am start -n com.feedhenry.app/com.feedhenry.app.MAINCLASSNAME

    printf '\n\n'
}

#
startClean

startBuild

startDeploy
