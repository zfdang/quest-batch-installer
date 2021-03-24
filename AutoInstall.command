#!/bin/sh
# clear
DIR="$(pwd)"
ADB="$DIR/../adb"
AAPT="$DIR/../aapt2"
echo "---------------------------------------------"
echo "Game: $DIR"

# check ADB status
# "$ADB" kill-server
# DEVICESTATUS="$("$ADB" devices | grep -v "List" | awk '{print $2}')"
# if [ "$DEVICESTATUS" != "device" ];then
#     echo "Your device is not connected or authorized. Please verify and try again!"
#     # exit 1
# fi

# find all apk and obb files
find "$DIR" -name "*.apk" | while read a; 
do 
    APKINFO="$("$AAPT" d badging "$a" | grep "package")"
    PACKAGENAME="$(echo $APKINFO | awk '{print $2}' | sed s/name=//g | sed s/\'//g)"
    PACKAGEVERSIONCODE="$(echo $APKINFO | awk '{print $3}' | sed s/versionCode=//g | sed s/\'//g)"
    OBBPATH="$DIR/$PACKAGENAME"
    
    # find all files under OBB Path
    if [ -d "$OBBPATH" ]
    then
        echo "OBBs: $OBBPATH"
        find "$OBBPATH" -type f -name "*" | while read o;
        do  
                echo "OBB file: $(basename "$o")"
                echo "    Copying ..."
                OBBPUSH=$("$ADB" push "$o" "/sdcard/Android/obb/"$PACKAGENAME"/"$(basename "$o")"")
                if [ "$?" != "0" ];then
                    echo "    Error installing OBB file: $(basename "$o")"
                    # exit 1
                fi
                echo "$OBBPUSH"
            
        done
    else 
        echo "No OBB Path found!"        
    fi    

    # install apk now
    echo "APK Name: "$(basename "$a")""
    echo "    Installing APK: "$(basename "$a")""
    ADBINSTALL=$("$ADB" install -r "$a")
    if [ "$?" != "0" ];then
        echo "    Error installing APK file: $(basename "$a")"
        # exit 1
    fi
    echo "$ADBINSTALL"
done


# kill adb at the end
# "$ADB" kill-server
