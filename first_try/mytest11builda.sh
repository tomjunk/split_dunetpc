#!/bin/sh

DIRECTORY=splitter11
USERNAME=`whoami`
HDIR=/build

source /cvmfs/dune.opensciencegrid.org/products/dune/setup_dune.sh
cd ${HDIR}/${USERNAME}
cd ${DIRECTORY}
source ${HDIR}/${USERNAME}/${DIRECTORY}/localProducts*/setup
cd ~/split
