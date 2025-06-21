#!/bin/bash

if test -z ${TAG}
then
    TAG="1.2.1"
fi

if test -z ${URL}
then
    URL="https://d1.music.126.net/dmusic/netease-cloud-music_1.2.1_amd64_ubuntu_20190428.deb"
fi