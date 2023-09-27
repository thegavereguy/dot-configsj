#!/bin/bash
album_art=$(playerctl -p tidal-hifi metadata mpris:artUrl)
if [[ $album_art ]]
then
	curl -s  "${album_art}" --output "/tmp/cover.jpeg"
	echo "/tmp/cover.jpeg"
fi

album_art=$(playerctl -p strawberry metadata mpris:artUrl)
if [[ $album_art ]]
then
	curl -s  "${album_art}" --output "/tmp/cover.jpg"
	echo "/tmp/cover.jpg"
	exit
fi

echo ""
