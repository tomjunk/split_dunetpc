#!/bin/sh

UNSPLIT_SOURCE=/build/trj/splitter11/srcs
SPLITTARGET=/build/trj/split_target/srcs
SCRIPTDIR=/nashome/t/trj/split

cd $SPLITTARGET
rm -rf *

cp ~/split/duneexamples/topCMakeLists.txt ./CMakeLists.txt

mkdir duneexamples
cd duneexamples
mkdir ups
cd ups
cp $UNSPLIT_SOURCE/dunetpc/ups/* .
rm ./product_deps
cp ~/split/duneexamples/product_deps ./product_deps
cd ..
cp ~/split/duneexamples/CMakeLists.txt ./CMakeLists.txt
cp -r $UNSPLIT_SOURCE/dunetpc/.gitignore .
mkdir duneexamples
cd duneexamples
cp ~/split/duneexamples/duneexamples_CMakeLists.txt ./CMakeLists.txt

cp -r $UNSPLIT_SOURCE/dunetpc/dune/DuneExample .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/GalleryScripts .

${SCRIPTDIR}/fixinclude.sh

