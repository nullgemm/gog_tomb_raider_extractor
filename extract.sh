#!/bin/bash

tmp=tmp
trilogy="$tmp/app"
tr1="$trilogy/Tomb Raider 1"
tr2="$trilogy/Tomb Raider 2"
tr3="$trilogy/Tomb Raider 3"

# prepare
echo "this scripts needs to load loop and mount images as root"
sudo modprobe loop
mkdir "$tmp"
mkdir -p data/tr1 data/tr2 data/tr3
innoextract $1 -d "$tmp"

# tr1
cat "$tr1/GAME.DAT" | head -n 3 >> "$tr1/GAME.cue"
bchunk "$tr1/GAME.GOG" "$tr1/GAME.cue" "$tr1/TRACK"
mkdir "$tr1/mnt"
sudo mount "$tr1/TRACK01.iso" "$tr1/mnt"
cp -r "$tr1/mnt/DATA" data/tr1/data
cp -r "$tr2/data" data/tr2/data
cp -r "$tr3/DATA" data/tr3/data
sudo umount "$tr1/mnt"

# cleanup
rm -r "$tmp"
