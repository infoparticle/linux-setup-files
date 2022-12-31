#!/bin/env bash

URL="https://repo.anaconda.com/archive"
INSTALLER=$(curl  -ksL $URL \
       	| grep Anaconda3-20.*Linux-x86_64.sh | tr '"' ' ' \
	| awk '{print $3}' | sort -r | head -1)

echo "Installing $INSTALLER ..."
curl -kLO "$URL/$INSTALLER"  && sh $INSTALLER -b -p /opt/anaconda3

