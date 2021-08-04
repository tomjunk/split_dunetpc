#!/bin/sh

UNSPLIT_SOURCE=/build/trj/splitter11/srcs
SPLITTARGET=/build/trj/split_target/srcs
SCRIPTDIR=/nashome/t/trj/split

cd $SPLITTARGET
rm -rf *

cp ~/split/duneopdet/topCMakeLists.txt ./CMakeLists.txt

mkdir duneopdet
cd duneopdet
mkdir ups
cd ups
cp $UNSPLIT_SOURCE/dunetpc/ups/* .
rm ./product_deps
cp ~/split/duneopdet/product_deps ./product_deps
cd ..
cp ~/split/duneopdet/CMakeLists.txt ./CMakeLists.txt
cp -r $UNSPLIT_SOURCE/dunetpc/.gitignore .
mkdir duneopdet
cd duneopdet

cp -r $UNSPLIT_SOURCE/dunetpc/dune/OpticalDetector/* .

${SCRIPTDIR}/fixinclude.sh


