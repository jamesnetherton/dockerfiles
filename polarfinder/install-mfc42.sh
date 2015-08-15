#!/bin/bash

# Hack to ignore X11 errors at build time
export DISPLAY=:1
export WINEDLLOVERRIDES="mscoree="
wine ?
/usr/bin/Xvfb :1 &
/usr/local/bin/winetricks -q mfc42
unset DISPLAY
unset WINEDLLOVERRIDES
