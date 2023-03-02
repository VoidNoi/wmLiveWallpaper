#!/bin/bash
killall -9 mpv
killall -9 xwinwrap
{
	xwinwrap -ov -g 1920x1080+0+0 -d -- mpv -wid WID $1 --no-osc --no-osd-bar --loop-file --player-operation-mode=cplayer --no-audio --panscan=1.0 --no-input-default-bindings
	xwinwrap -ov -g 1920x1080+1920+0 -d -- mpv -wid WID $1 --no-osc --no-osd-bar --loop-file --player-operation-mode=cplayer --no-audio --panscan=1.0 --no-input-default-bindings
} &> /dev/null
