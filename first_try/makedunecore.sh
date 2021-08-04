#!/bin/sh

UNSPLIT_SOURCE=/build/trj/splitter11/srcs
SPLITTARGET=/build/trj/split_target/srcs
SCRIPTDIR=/nashome/t/trj/split

cd $SPLITTARGET
rm -rf *

cp ~/split/dunecore/topCMakeLists.txt ./CMakeLists.txt

mkdir dunecore
cd dunecore
mkdir ups
cd ups
cp $UNSPLIT_SOURCE/dunetpc/ups/* .
rm ./product_deps
cp ~/split/dunecore/product_deps ./product_deps
cd ..
cp ~/split/dunecore/CMakeLists.txt ./CMakeLists.txt
cp -r $UNSPLIT_SOURCE/dunetpc/.gitignore .
mkdir dunecore
cd dunecore
cp ~/split/dunecore/dunecore_CMakeLists.txt ./CMakeLists.txt

cp -r $UNSPLIT_SOURCE/dunetpc/dune/ArtSupport .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/DuneInterface .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/Utilities .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/DAQTriggerSim .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/DuneServiceAccess .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/Geometry .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/DuneCommon .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/DuneObj .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/DuneObjDumpers .

${SCRIPTDIR}/fixinclude.sh

