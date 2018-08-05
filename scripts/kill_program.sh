#!/bin/bash

query=`i3-input -f "Open Sans" -P "Kill Program: " | grep command | awk -F 'command = ' '{print$2}'`

if [ -n "${query}" ]; then
	# chromium running? get its window id
	#ID=`wmctrl -l | grep firefox | cut -d' ' -f1`
	killall "${query}"
	# open a new google search with the query :)
	#firefox https://google.com/search?q="${query}"
fi
