#!/bin/sh

source ./defvars.sh

cd $SPLITTARGET
rm -rf *

cp ${SCRIPTDIR}/duneexamples/topCMakeLists.txt ./CMakeLists.txt

mkdir duneexamples
cd duneexamples
mkdir ups
cd ups
cp $UNSPLIT_SOURCE/dunetpc/ups/* .
rm ./product_deps
cp ${SCRIPTDIR}/duneexamples/product_deps ./product_deps
cd ..
cp ${SCRIPTDIR}/duneexamples/CMakeLists.txt ./CMakeLists.txt
cp -r $UNSPLIT_SOURCE/dunetpc/.gitignore .
mkdir duneexamples
cd duneexamples
cp ${SCRIPTDIR}/duneexamples/duneexamples_CMakeLists.txt ./CMakeLists.txt

cp -r $UNSPLIT_SOURCE/dunetpc/dune/DuneExample .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/GalleryScripts .

${SCRIPTDIR}/fixinclude.sh

