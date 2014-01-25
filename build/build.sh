#!/bin/bash
set -e

#Load image for this project

wget -O - get.pharo.org/20+vm | bash

echo "Loading Scale and Dependencies..."
#Load stable version of the monticello configuration, according to this git sources
./pharo Pharo.image build/installScale.st