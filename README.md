# XashDS-Termux
English | [Русский](https://github.com/Deskarpiostin/XashDS-Termux/russian.md
This repository that will show you how to make LAN servers for Xash3D-FWGS.

Supported games:
- Counter-Strike 1.6 (cstrike)
- Half-Life (valve)
- And maybe Team Fortress Classic?

Note that you need to have basic knowledge with Termux, either you will struggle in easy situations. Any issues with easy solution will be ignored.

// Setup
1. Install _xashds-linux-arm64.tar.gz_ file from [Xash3D-FWGS continuous master build](https://github.com/FWGS/xash3d-fwgs/releases).
2. Open archive using ZArchiver.
3. Select all files.
4. Make long tap at one of the selected files.
5. Press copy.
6. Leave the "Download" directory and create folder "xashds".
7. Paste the files inside the "xashds" directory.
8. Paste "valve" folder from "xash" folder into "xashds" directory again.
_Note: If you want to start Counter-Strike 1.6 server, then you need to paste "cstrike" folder also, or if you want to start Team Fortress Classic server, then you need to paste the "tfc" folder.
9. Copy next commands to the Termux:
```bash
curl
```
```bash
proot-distro login debian
```
```bash
cd ~/xashds
```
```bash
chmod +x *
```
```bash
./xash -game <game> -maxplayers 32 -map <mapname> +hostname <name> <other commands if you want, should start with "-">
```
Change the _<game>_ into:
-"cstrike" if you want to start Counter-Strike 1.6 server
-"valve" if you want to start Half-Life DM server
-"tfc" if you want to start Team Fortress Classic server (probably not gonna work)

Change the _<map>_ to name of the map in your game, make sure they're exist.

Change the _<name>_ to the name of your server.

And delete or change the _<other commands if you want, should start with "-">_ if you want to add more commands.

//Troubleshooting
Bus error: 
make sure you didn't typed "public 1" into last command, because sometimes it's results an bus error.
Can't find the file:
Make sure you downloaded the **xashds-linux-arm64.tar.gz** from [Xash3D-FWGS continuous master build](https://github.com/FWGS/xash3d-fwgs/releases), not any other files.
