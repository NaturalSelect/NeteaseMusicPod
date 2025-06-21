#!/bin/bash

source prepare.sh

docker build . -t naturalselect/netease-music-pod:${TAG}