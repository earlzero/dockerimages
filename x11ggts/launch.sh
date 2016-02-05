#!/bin/bash -e
export DISPLAY=:1
Xvfb :1 -screen 0 $1 &
x11vnc -display :1  -forever -usepw  &
openbox &
/ggts/ggts-bundle/ggts-3.6.4.RELEASE/GGTS 

