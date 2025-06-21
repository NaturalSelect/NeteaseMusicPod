#!/bin/bash

mkdir -p ~/.config/netease-cloud-music

docker run \
    --rm \
    -it \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY \
    -e XMODIFIERS \
    -e GTK_IM_MODULE \
    -e QT_IM_MODULE \
    -e AUDIO_GID="$(getent group audio | cut -d: -f3)" \
    -e VIDEO_GID="$(getent group video | cut -d: -f3)" \
    -e GID="$(id -g)" \
    -e UID="$(id -u)" \
    -e XDG_RUNTIME_DIR="${XDG_RUNTIME_DIR}" \
    --userns keep-id\
    --ipc host \
    -e HTTP_PROXY="" \
    -e HTTPS_PROXY="" \
    -e http_proxy=""\
    -e https_proxy=""\
    -v /run/user/$(id -u)/pulse:/run/user/$(id -u)/pulse \
    -v ${XDG_RUNTIME_DIR}:${XDG_RUNTIME_DIR} \
    -v /etc/localtime:/etc/localtime:ro \
    -e PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native \
    -v ~/.config/netease-cloud-music:/home/user/.config/netease-cloud-music \
    $@ \
    "naturalselect/netease-music-pod:1.2.1"