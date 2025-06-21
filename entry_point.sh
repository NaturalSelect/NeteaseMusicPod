#!/bin/bash

NETEASE_MUSIC_ROOT="/opt/netease/netease-cloud-music/"

pushd ${NETEASE_MUSIC_ROOT} >> /dev/null

./netease-cloud-music.bash

popd >> /dev/null