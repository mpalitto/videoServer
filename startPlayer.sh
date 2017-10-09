#! /bin/bash
#/root/startPlayer.sh

pkill vlc
plist="$(sed '1s/^/ /;:a;N;$!ba;s/\n/ /g;s_ _ /home/matteo/Videos/_g' /home/matteo/video.list)"
# echo $plist
# echo
matteoCMD="cd; export DISPLAY=:0; vlc -f --no-video-title --qt-continue 0 -L $plist"
# echo $matteoCMD
# echo
nohup su - matteo -c "$matteoCMD" &
echo $! > videoPlayer.pid
#mplayer -fs -playlist video.list -loop 0 " &
