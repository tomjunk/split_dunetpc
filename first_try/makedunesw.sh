#!/bin/sh

source ./defvars.sh

cd $SPLITTARGET
rm -rf *

cp ${SCRIPTDIR}/dunesw/topCMakeLists.txt ./CMakeLists.txt

mkdir dunesw
cd dunesw
mkdir ups
cd ups
cp $UNSPLIT_SOURCE/dunetpc/ups/* .
rm ./product_deps
cp ${SCRIPTDIR}/dunesw/product_deps ./product_deps
cd ..
cp ${SCRIPTDIR}/dunesw/CMakeLists.txt ./CMakeLists.txt
cp -r $UNSPLIT_SOURCE/dunetpc/.gitignore .
cp -r $UNSPLIT_SOURCE/dunetpc/test .
cp -r $UNSPLIT_SOURCE/dunetpc/fcl .

${SCRIPTDIR}/fixinclude.sh

