#!/bin/sh

source ./defvars.sh

cd $SPLITTARGET
rm -rf *

cp ${SCRIPTDIR}/dunedataprep/topCMakeLists.txt ./CMakeLists.txt

mkdir dunedataprep
cd dunedataprep
mkdir ups
cd ups
cp $UNSPLIT_SOURCE/dunetpc/ups/* .
rm ./product_deps
cp ${SCRIPTDIR}/dunedataprep/product_deps ./product_deps
cd ..
cp ${SCRIPTDIR}/dunedataprep/CMakeLists.txt ./CMakeLists.txt
cp -r $UNSPLIT_SOURCE/dunetpc/.gitignore .
mkdir dunedataprep
cd dunedataprep
cp ${SCRIPTDIR}/dunedataprep/dunedataprep_CMakeLists.txt ./CMakeLists.txt

cp -r $UNSPLIT_SOURCE/dunetpc/dune/DataPrep .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/CalData .

${SCRIPTDIR}/fixinclude.sh

