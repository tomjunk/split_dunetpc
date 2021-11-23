#!/bin/sh

LARSOFT_VERSION=v09_37_01
COMPILER=e20
DIRECTORY=split_target
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
#mrb g dunetpc

#cd $MRB_BUILDDIR
#mrbsetenv
#mrb i -j16

