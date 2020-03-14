#!/bin/bash

set -e

# Load image for this project.

rm -fr cache
mkdir -p cache
cd cache


export ARCH=`uname -p`
if [ "$ARCH" == "x86_64" ] 
then
 export ARCH="64"
 export VM="vmHeadlessLatest"
else
 export ARCH=""
 export VM="vm"
fi

echo "Using  get.pharo.org/$ARCH/80+$VM" 
wget -O - get.pharo.org/$ARCH/80+$VM | bash

echo "Loading Scale and Dependencies..."
# Load stable version of the monticello configuration, according to
# this git sources.
./pharo Pharo.image ../build/installScale.st


