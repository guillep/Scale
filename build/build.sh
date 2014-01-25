#!/bin/bash
set -e

#Setup arguments
if [ $# == 0 ]; then
	VERSION=bleedingEdge
else
	VERSION=$1
fi

#Load image for this project

wget -O - get.pharo.org/20+vm | bash


#Load stable version of the monticello configuration, according to this git sources
./pharo Pharo.image build/installScale.st

echo "Configuration Loaded. Opening script..."