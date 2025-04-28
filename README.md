# XashDS-Termux
| English | [Русский](https://github.com/Deskarpiostin/XashDS-Termux/blob/main/russian.md) |

This repository that will show you how to make LAN servers for Xash3D-FWGS.

Supported games:
- Counter-Strike 1.6 (cstrike)
- Half-Life (valve)
- And maybe Team Fortress Classic?

Note that you need to have basic knowledge with Termux, either you will struggle in easy situations. Any issues with easy solution will be ignored.

You need to compile hl.so for arm64 through [hlsdk-portable](https://github.com/FWGS/hlsdk-portable), or you will have an library error

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
curl -sL https://raw.githubusercontent.com/Deskarpiostin/XashDS-Termux/refs/heads/main/files/setup.sh | bash
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
./xash -dedicated -game <gamename> <other commands>
```
**Note: before starting server, type "hostname <server name>", and "maxplayers <max player count>"**
Change the _gamename_ into:
-"cstrike" if you want to start Counter-Strike 1.6 server
-"valve" if you want to start Half-Life DM server
-"tfc" if you want to start Team Fortress Classic server (probably not gonna work)

And delete or change the _<other commands>_ if you want to add more commands. Delete if you dont want to

//Making online server
**Note: i do not recommend doing this. Other players will have 150-200 ping on server, better use VDS for hosting servers**

1. To make your server online, port foward your phone to the 27015 UDP
2. Before starting the server, type _-public 1_ and _sv_lan 0_
3. Turn of any VPN/Proxy turned on

//Troubleshooting
Bus error: 
make sure you didn't typed "public 1" into last command, because sometimes it's results an bus error.
Can't find the file:
Make sure you downloaded the **xashds-linux-arm64.tar.gz** from [Xash3D-FWGS continuous master build](https://github.com/FWGS/xash3d-fwgs/releases), not any other files.
Or did you compile the half-life sdk?
