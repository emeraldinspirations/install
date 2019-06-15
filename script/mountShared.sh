pkexec mount -v /dev/linuxvg/home_shared ~/Shared 2>&1 | while read OUTPUT; do notify-send "Mount Shared Volume" "$OUTPUT"; done
