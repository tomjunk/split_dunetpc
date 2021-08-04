#!/bin/sh

UNSPLIT_SOURCE=/build/trj/splitter11/srcs
SPLITTARGET=/build/trj/split_target/srcs
SCRIPTDIR=/nashome/t/trj/split

cd $SPLITTARGET
rm -rf *

cp ~/split/duneconfig/topCMakeLists.txt ./CMakeLists.txt

mkdir duneconfig
cd duneconfig
mkdir ups
cd ups
cp $UNSPLIT_SOURCE/dunetpc/ups/* .
rm ./product_deps
cp ~/split/duneconfig/product_deps ./product_deps
cd ..
cp ~/split/duneconfig/CMakeLists.txt ./CMakeLists.txt
cp -r $UNSPLIT_SOURCE/dunetpc/.gitignore .

cp -r $UNSPLIT_SOURCE/dunetpc/fcl .

${SCRIPTDIR}/fixinclude.sh

