#!/bin/bash

query=`i3-input -f "Open Sans 25" -P "Search query: " | grep command | awk -F 'command = ' '{print$2}'`

if [ -n "${query}" ]; then
	# chromium running? get its window id
	ID=`wmctrl -l | grep firefox | cut -d' ' -f1`

	# open a new google search with the query :)
	firefox https://duckduckgo.com/?q="${query}"
	#firefox https://google.com/search?q="${query}"
fi
