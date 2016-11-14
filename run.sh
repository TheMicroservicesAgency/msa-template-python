#!/bin/ash
#
# This script will be executed inside the docker container

cd /opt/app/

VERSION=`cat VERSION`
NAME=`cat NAME`

echo " "
echo "      888b     d888    .d8888b.          d8888      "
echo "      8888b   d8888   d88P  Y88b        d88888      "
echo "      88888b.d88888   Y88b.            d88P888      "
echo "      888Y88888P888    'Y888b.        d88P 888      "
echo "      888 Y888P 888       'Y88b.     d88P  888      "
echo "      888  Y8P  888         '888    d88P   888      "
echo "      888   '   888   Y88b  d88P   d8888888888      "
echo "      888       888    'Y8888P'   d88P     888      "
echo " "
echo " Product: $NAME, Version: $VERSION"
echo " "
echo " https://github.com/orgs/TheMicroservicesAgency/$NAME"
echo " https://microservices.agency/"
echo ""

echo " * Starting NGINX in the background ..."
nginx

echo " "
echo " $ ps aux | grep [n]ginx"
ps aux | grep [n]ginx

echo " "
echo " * Starting Python app ..."
python app.py 2>> /dev/stderr 1>> /dev/stdout
