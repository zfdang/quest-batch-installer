# verify device, and lunch AutoInstall in each app/game folder

DIR="$(pwd)"
ADB="$DIR/adb"

# check ADB status
"$ADB" kill-server
DEVICESTATUS="$("$ADB" devices | grep -v "List" | awk '{print $2}')"
if [ "$DEVICESTATUS" != "device" ];then
    echo "Your device is not connected or authorized. Please verify and try again!"
    exit 1
fi


echo "Total Apps/Games:"
find . -maxdepth 1 -type d \( ! -name . \) | wc -l
echo "Now begin to install ..."
find . -maxdepth 1 -type d \( ! -name . \) -print0 | sort -zn | xargs -0 -I '{}' bash -c "cd '{}' && ../AutoInstall.command" \;

# kill adb at the end
"$ADB" kill-server
