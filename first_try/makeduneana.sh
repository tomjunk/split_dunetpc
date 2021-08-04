#!/bin/sh

UNSPLIT_SOURCE=/build/trj/splitter11/srcs
SPLITTARGET=/build/trj/split_target/srcs
SCRIPTDIR=/nashome/t/trj/split

cd $SPLITTARGET
rm -rf *

cp ~/split/duneana/topCMakeLists.txt ./CMakeLists.txt

mkdir duneana
cd duneana
mkdir ups
cd ups
cp $UNSPLIT_SOURCE/dunetpc/ups/* .
rm ./product_deps
cp ~/split/duneana/product_deps ./product_deps
cd ..
cp ~/split/duneana/CMakeLists.txt ./CMakeLists.txt
cp -r $UNSPLIT_SOURCE/dunetpc/.gitignore .
mkdir duneana
cd duneana
cp ~/split/duneana/duneana_CMakeLists.txt ./CMakeLists.txt

cp -r $UNSPLIT_SOURCE/dunetpc/dune/AnaTree .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/CAFMaker .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/DAQSimAna .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/EnergyStudies .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/EventFilters .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/HitAnalysis .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/PandoraAnalysis .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/ProductFilters .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/ShowerAna .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/SupernovaAna .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/TrackingAna .

${SCRIPTDIR}/fixinclude.sh

