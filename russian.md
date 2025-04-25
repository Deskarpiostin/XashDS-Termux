# XashDS-Termux
| [English](https://github.com/Deskarpiostin/XashDS-Termux/tree/main?tab=readme-ov-file) | Русский |

Этот репозиторий покажет вам, как создать LAN-серверы для [Xash3D-FWGS](https://github.com/FWGS/xash3d-fwgs).

Поддерживаемые игры:
- Counter-Strike 1.6 (cstrike)
- Half-Life (valve)
- И, возможно, Team Fortress Classic?

Обратите внимание, что вам нужны базовые знания Termux, иначе вы столкнётесь с трудностями в простых ситуациях. Любые проблемы с простым решением будут игнорироваться. Также надо скомпилировать hl.so из [hlsdk-portable](https://github.com/FWGS/hlsdk-portable)

// Установка
1. Установите файл _xashds-linux-arm64.tar.gz_ из [непрерывной мастер-сборки Xash3D-FWGS](https://github.com/FWGS/xash3d-fwgs/releases).
2. Откройте архив с помощью ZArchiver.
3. Выделите все файлы.
4. Длительно нажмите на один из выделенных файлов.
5. Нажмите «Копировать».
6. Выйдите из каталога «Download» и создайте папку «xashds».
7. Вставьте файлы в папку «xashds».
8. Скопируйте папку «valve» из папки «xash» также в директорию «xashds».
   _Примечание: если вы хотите запустить сервер Counter-Strike 1.6, нужно дополнительно скопировать папку «cstrike», а если Team Fortress Classic – папку «tfc» (возможно, не будет работать)._
9. Скопируйте в Termux следующие команды:
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
./xash -game <game> -maxplayers 32 -map <mapname> +hostname <name> <other commands if you want, should start with "-">
```
Замените:

<game> на

cstrike, если хотите запустить сервер Counter-Strike 1.6

valve, если хотите запустить сервер Half-Life DM

tfc, если хотите запустить сервер Team Fortress Classic (возможно, не будет работать)


<mapname> на название карты в вашей игре, убедитесь, что она существует.

<name> на имя вашего сервера.
И при желании удалите или измените <other commands if you want, should start with "-">, если хотите добавить другие параметры (они должны начинаться с «-»).


// Устранение неполадок Bus error: убедитесь, что вы не ввели «public 1» в последней команде, так как это иногда вызывает ошибку Bus error.
Не удаётся найти файл: убедитесь, что вы скачали именно xashds-linux-arm64.tar.gz из [continuous мастер-сборки [Xash3D-FWGS](https://github.com/fwgs/xash3d-fwgs/releases/), а не какой-либо другой файл. Или скомпилировал ли ты Half-Life SDK через hlsdk-portable?

Todos:
разрешить создание публичных серверов
