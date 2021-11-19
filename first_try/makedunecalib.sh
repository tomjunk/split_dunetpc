#!/bin/sh

source ./defvars.sh

cd $SPLITTARGET
rm -rf *

cp ${SCRIPTDIR}/dunecalib/topCMakeLists.txt ./CMakeLists.txt

mkdir dunecalib
cd dunecalib
mkdir ups
cd ups
cp $UNSPLIT_SOURCE/dunetpc/ups/* .
rm ./product_deps
cp ${SCRIPTDIR}/dunecalib/product_deps ./product_deps
cd ..
cp ${SCRIPTDIR}/dunecalib/CMakeLists.txt ./CMakeLists.txt
cp -r $UNSPLIT_SOURCE/dunetpc/.gitignore .
mkdir dunecalib
cd dunecalib
cp ${SCRIPTDIR}/dunecalib/dunecalib_CMakeLists.txt ./CMakeLists.txt

cp -r $UNSPLIT_SOURCE/dunetpc/dune/Calib .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/CalibServices .

${SCRIPTDIR}/fixinclude.sh

