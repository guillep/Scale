#!/bin/bash
set -e

#Load image for this project

rm cache -r
mkdir -p cache
cd cache
wget -O - get.pharo.org/50+vm | bash

echo "Loading Scale and Dependencies..."
#Load stable version of the monticello configuration, according to this git sources
./pharo Pharo.image ../build/installScale.st


