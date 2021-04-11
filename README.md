# quest-batch-installer
MacOS Batch App Installer for Oculus Quest

Oculus Quest的批量安装程序/游戏脚本

# Instructions:

1. Extract all files into one folder

    chmod +x install_all.sh AutoInstall.command
    
3. Copy the Apk(s) and OBB(s) you would like to install to the current folder; each app/game into one folder; See folder layout examples
4. Connect the Quest to the system
5. ***FIRST RUN ONLY*** Due to gatekeeper not liking the redistrtbution of the android tools the following must be done.

    4a. Right click on the following exec files and click open. Allow any confirmation prompts to RUN

        aapt2
        adb
    
5. run install_all.sh

# Folder layout examples:

```
.
├── A Fishermans Tale v16+1.064 -QU
│   ├── A Fishermans Tale [1.064.16] S2.11.apk
│   └── com.innerspacevr.afishermanstale
│       └── main.16.com.innerspacevr.afishermanstale.obb
├── Acron - Attack of the Squirrels! v114094392+1.14.94392 -QU
│   └── Acron_ Attack of the Squirrels! [1.14.94392.114094392] patch+savefix+90Hz+CustomRes.apk
├── Beat Saber v184+1.14.0 -QU (with DLC)
│   ├── Beat Saber [1.14.0.184] + DLC_Unlocker S3.0.2.apk
│   └── com.beatgames.beatsaber
│       ├── americanidiot
│       ├── badliar
│       └── whilewereyoung
├── AutoInstall.command
├── aapt2
├── adb
├── install_all.sh
└── readme.txt
```

Output example:

```
╰─ sh ./install_all.sh                                                                                                    

cannot connect to daemon at tcp:5037: Connection refused
* daemon not running; starting now at tcp:5037
* daemon started successfully
Total Apps/Games:
       2
Now begin to install ...
---------------------------------------------
Game: /Quest2/games/Apollo 11 v22+2.3 -Q2Patched-90Hz-CustomRes -QU
OBBs: /Quest2/games/Apollo 11 v22+2.3 -Q2Patched-90Hz-CustomRes -QU/com.immersivevreducation.Apollo11QuestFinal
OBB file: main.22.com.immersivevreducation.Apollo11QuestFinal.obb
    Copying ...
/Quest2/games/Apollo 11 v22+2.3 -Q2Patched-90Hz-CustomRes -QU/com.immersivevreducation.Apollo11QuestFinal/main.22.com.immersivevreducation.Apollo11QuestFinal.obb: 1 file pushed. 35.3 MB/s (1775144637 bytes in 48.022s)
APK Name: Apollo_11 [2.3.22] patch+savefix+90Hz+CustomRes.apk
    Installing APK: Apollo_11 [2.3.22] patch+savefix+90Hz+CustomRes.apk
Performing Streamed Install
Success
---------------------------------------------
Game: /Quest2/games/Star Wars - Tales from the Galaxy's Edge v291854+1.0.4-185011.cl.291854 -QU (v.2)
OBBs: /Quest2/games/Star Wars - Tales from the Galaxy's Edge v291854+1.0.4-185011.cl.291854 -QU (v.2)/com.ilmxlab.tales
OBB file: Season1Taco-Android_ASTC.pak
    Copying ...
/Quest2/games/Star Wars - Tales from the Galaxy's Edge v291854+1.0.4-185011.cl.291854 -QU (v.2)/com.ilmxlab.tales/Season1Taco-Android_ASTC.pak: 1 file pushed. 36.1 MB/s (2615917433 bytes in 69.182s)
OBB file: main.291854.com.ilmxlab.tales.obb
    Copying ...
/Quest2/games/Star Wars - Tales from the Galaxy's Edge v291854+1.0.4-185011.cl.291854 -QU (v.2)/com.ilmxlab.tales/main.291854.com.ilmxlab.tales.obb: 1 file pushed. 36.1 MB/s (3271586148 bytes in 86.405s)
APK Name: Star Wars - Tales from the Galaxys Edge [1.0.4+185011.cl.291854] S3.0.2.apk
    Installing APK: Star Wars - Tales from the Galaxys Edge [1.0.4+185011.cl.291854] S3.0.2.apk
Performing Streamed Install
Success
```
