#!/bin/sh

UNSPLIT_SOURCE=/build/trj/splitter11/srcs
SPLITTARGET=/build/trj/split_target/srcs
SCRIPTDIR=/nashome/t/trj/split

cd $SPLITTARGET
rm -rf *

cp ~/split/dunedataprep/topCMakeLists.txt ./CMakeLists.txt

mkdir dunedataprep
cd dunedataprep
mkdir ups
cd ups
cp $UNSPLIT_SOURCE/dunetpc/ups/* .
rm ./product_deps
cp ~/split/dunedataprep/product_deps ./product_deps
cd ..
cp ~/split/dunedataprep/CMakeLists.txt ./CMakeLists.txt
cp -r $UNSPLIT_SOURCE/dunetpc/.gitignore .
mkdir dunedataprep
cd dunedataprep
cp ~/split/dunedataprep/dunedataprep_CMakeLists.txt ./CMakeLists.txt

cp -r $UNSPLIT_SOURCE/dunetpc/dune/DataPrep .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/CalData .

${SCRIPTDIR}/fixinclude.sh

