#!/bin/sh

LARSOFT_VERSION=v09_26_00
COMPILER=e20
DIRECTORY=splitter11
USERNAME=`whoami`
HDIR=/build

source /cvmfs/dune.opensciencegrid.org/products/dune/setup_dune.sh

cd ${HDIR}/${USERNAME}
touch ${DIRECTORY}
rm -rf ${DIRECTORY}
mkdir ${DIRECTORY}
cd ${DIRECTORY}
setup larsoft ${LARSOFT_VERSION} -q ${COMPILER}:prof
mrb newDev -q ${COMPILER}:prof
source ${HDIR}/${USERNAME}/${DIRECTORY}/localProducts*/setup
mkdir work
cd srcs
mrb g dunetpc

cd $MRB_BUILDDIR
mrbsetenv
#mrb i -j16

