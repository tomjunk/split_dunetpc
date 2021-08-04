#!/bin/sh

UNSPLIT_SOURCE=/build/trj/splitter11/srcs
SPLITTARGET=/build/trj/split_target/srcs
SCRIPTDIR=/nashome/t/trj/split

cd $SPLITTARGET
rm -rf *

cp ~/split/dunecalib/topCMakeLists.txt ./CMakeLists.txt

mkdir dunecalib
cd dunecalib
mkdir ups
cd ups
cp $UNSPLIT_SOURCE/dunetpc/ups/* .
rm ./product_deps
cp ~/split/dunecalib/product_deps ./product_deps
cd ..
cp ~/split/dunecalib/CMakeLists.txt ./CMakeLists.txt
cp -r $UNSPLIT_SOURCE/dunetpc/.gitignore .
mkdir dunecalib
cd dunecalib
cp ~/split/dunecalib/dunecalib_CMakeLists.txt ./CMakeLists.txt

cp -r $UNSPLIT_SOURCE/dunetpc/dune/Calib .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/CalibServices .

${SCRIPTDIR}/fixinclude.sh

