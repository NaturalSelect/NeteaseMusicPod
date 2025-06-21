#!/bin/bash

DOWNLOAD_URL="https://d1.music.126.net/dmusic/netease-cloud-music_1.2.1_amd64_ubuntu_20190428.deb"

wget ${DOWNLOAD_URL} -O netease-cloud-music.deb

sudo apt install -y ./netease-cloud-music.deb

rm ./netease-cloud-music.deb

sudo cp /usr/lib/x86_64-linux-gnu/libgio-2.0.so.0 /opt/netease/netease-cloud-music/libs/

sudo mv ${HOME}/netease-cloud-music.bash /opt/netease/netease-cloud-music