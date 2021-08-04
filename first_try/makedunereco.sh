#!/bin/sh

UNSPLIT_SOURCE=/build/trj/splitter11/srcs
SPLITTARGET=/build/trj/split_target/srcs
SCRIPTDIR=/nashome/t/trj/split

cd $SPLITTARGET
rm -rf *

cp ~/split/dunereco/topCMakeLists.txt ./CMakeLists.txt

mkdir dunereco
cd dunereco
mkdir ups
cd ups
cp $UNSPLIT_SOURCE/dunetpc/ups/* .
rm ./product_deps
cp ~/split/dunereco/product_deps ./product_deps
cd ..
cp ~/split/dunereco/CMakeLists.txt ./CMakeLists.txt
cp -r $UNSPLIT_SOURCE/dunetpc/.gitignore .
mkdir dunereco
cd dunereco
cp ~/split/dunereco/dunereco_CMakeLists.txt ./CMakeLists.txt

cp -r $UNSPLIT_SOURCE/dunetpc/dune/AnaUtils .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/ClusterFinderDUNE .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/CVN .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/DUNEPandora .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/DUNEWireCell .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/FDSensOpt .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/HitFinderDUNE .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/InfillChannels .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/RecoAlgDUNE .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/RegCNN .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/SNSlicer .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/SNUtils .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/TrackFinderDUNE .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/TrackPID .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/VLNets .

${SCRIPTDIR}/fixinclude.sh

