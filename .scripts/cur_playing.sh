mpc current 2> /dev/null; x=$?; if [ $x -ne 0 ]; then echo "(mpd not launched)"; fi;
