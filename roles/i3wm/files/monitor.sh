#!/bin/bash -e

main_screen_id=$(xrandr |grep "connected primary" | cut -d\  -f1)
second_screen_id=$(xrandr |grep -w "connected" | grep -v "connected primary" | cut -d\  -f1)

if [[ "$second_screen_id" == "" ]]
then
	i3-msg '[workspace=".*"]' move workspace to output ${main_screen_id}
else
	xrandr --output ${second_screen_id} --right-of ${main_screen_id} --rotate left
	i3-msg '[workspace="1. Terminator"]' move workspace to output ${second_screen_id}
	i3-msg '[workspace="2. Firefox"]' move workspace to output ${main_screen_id}
	i3-msg '[workspace="3. Rambox"]' move workspace to output ${main_screen_id}
	i3-msg '[workspace="4. Signal"]' move workspace to output ${main_screen_id}
fi
