#!/bin/bash
album_art=$(playerctl -p tidal-hifi metadata mpris:artUrl)
if [[ $album_art ]]
then
	curl -s  "${album_art}" --output "/tmp/cover.jpeg"
	echo "/tmp/cover.jpeg"
	exit
fi

echo ""
