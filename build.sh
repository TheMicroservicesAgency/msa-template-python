#!/bin/bash
#
# Script to build a docker image

NAME=`cat NAME`
VERSION=`cat VERSION`

docker build -t $NAME:$VERSION . && echo "- Build completed !"
