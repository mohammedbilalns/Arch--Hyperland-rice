#!/usr/bin/env sh

if pgrep hypridle 
then
	killall hypridle 
else 
	hypridle 
fi
