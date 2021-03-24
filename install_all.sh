# find . -maxdepth 1 -type d \( ! -name . \) -exec bash -c "cd '{}' && ../AutoInstall.command" \;
find . -maxdepth 1 -type d \( ! -name . \) | wc -l
find . -maxdepth 1 -type d \( ! -name . \) -print0 | sort -zn | xargs -0 -I '{}' bash -c "cd '{}' && ../AutoInstall.command" \;
