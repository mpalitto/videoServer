pid="$(< videoPlayer.pid)"
kill $pid $((pid+1)) $((pid+2))
