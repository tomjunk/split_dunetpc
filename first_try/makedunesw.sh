#!/bin/sh

UNSPLIT_SOURCE=/build/trj/splitter11/srcs
SPLITTARGET=/build/trj/split_target/srcs
SCRIPTDIR=/nashome/t/trj/split

cd $SPLITTARGET
rm -rf *

cp ~/split/dunesw/topCMakeLists.txt ./CMakeLists.txt

mkdir dunesw
cd dunesw
mkdir ups
cd ups
cp $UNSPLIT_SOURCE/dunetpc/ups/* .
rm ./product_deps
cp ~/split/dunesw/product_deps ./product_deps
cd ..
cp ~/split/dunesw/CMakeLists.txt ./CMakeLists.txt
cp -r $UNSPLIT_SOURCE/dunetpc/.gitignore .
cp -r $UNSPLIT_SOURCE/dunetpc/test .
cp -r $UNSPLIT_SOURCE/dunetpc/fcl .

${SCRIPTDIR}/fixinclude.sh

