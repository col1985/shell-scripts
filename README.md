
# Workflow shell scripts

Repo is to become central location for all shell scripts used in development
process. Aim is to create a central location for storing and developing scripts
to automate and enhance development workflow on the FeedHenry 3 platform.

## Make script executable

To make any of the scripts executable run the following command `chmod 755 ./nameofscript.sh`.
The initention going forward is to have a signal script perform this task. Some scripts require
arguements to be passed. 

Please review README contents below for further informaton.

### deploy-android.sh

This script is automate deploying a Cordova Andoird app on device by removing existing apk using adb, building a 
new apk using cordova cli, installing the apk on device and finally launching the app.

  ```shell
    ./deploy-android.sh <buildpath> <pkgname> <launch>
  ```

- **buildpath** - path to location of projects .apk file. Usually named `appname-debug.apk`.
- **pkgname** - projects package name / bundle id, eg `com.example.app`.
- **launch** - name of android platforms main `.class` file eg `APP`.  

### weinre.sh

This script will automatically detect your mac's ip address from interface `en0`. The script
is dependent on [Weirne](http://people.apache.org/~pmuellr/weinre/docs/latest/Home.html) installed
on your machine, and a wifi connection. 

  ```shell
     ./weinre.sh
  ```

**Note** You can get your devices network IP address by running `ifconfig` from a terminal window. Please review 
[Weirne homepage](http://people.apache.org/~pmuellr/weinre/docs/latest/Home.html) for further intructions on debugging your Cordova project.   

    
