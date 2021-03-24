# quest-batch-installer
MacOS Batch App Installer for Oculus Quest


# Instructions:

1. extract all files into one folder
2. Copy the Apk(s) and OBB(s) you would like to install to the current folder
3. ***FIRST RUN ONLY*** Due to gatekeeper not liking the redistrtbution of the android tools the following must be done.
    3a. Right click on the following exec files and click open. Allow any confirmation prompts to RUN
        aapt2
        adb
4. Connect the Quest to the system
5. run install_all.sh

# Folder layout examples:

'''
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
'''
