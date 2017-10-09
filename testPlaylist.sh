plist="$(sed '1s/^/ /;:a;N;$!ba;s/\n/ /g;s_ _ /home/matteo/Videos/_g' /home/matteo/video.list)"
for file in $plist; do
  if [ ! -e $file ]; then
    echo "ERROR: $file NOT FOUND!"
  fi
done
