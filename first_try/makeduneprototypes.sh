#!/bin/sh

UNSPLIT_SOURCE=/build/trj/splitter11/srcs
SPLITTARGET=/build/trj/split_target/srcs
SCRIPTDIR=/nashome/t/trj/split

cd $SPLITTARGET
rm -rf *

cp ~/split/duneprototypes/topCMakeLists.txt ./CMakeLists.txt

mkdir duneprototypes
cd duneprototypes
mkdir ups
cd ups
cp $UNSPLIT_SOURCE/dunetpc/ups/* .
rm ./product_deps
cp ~/split/duneprototypes/product_deps ./product_deps
cd ..
cp ~/split/duneprototypes/CMakeLists.txt ./CMakeLists.txt
cp -r $UNSPLIT_SOURCE/dunetpc/.gitignore .
mkdir duneprototypes
cd duneprototypes
cp ~/split/duneprototypes/duneprototypes_CMakeLists.txt ./CMakeLists.txt

cp -r $UNSPLIT_SOURCE/dunetpc/dune/Protodune .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/Iceberg .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/3x1x1dp .
cp -r $UNSPLIT_SOURCE/dunetpc/dune/BeamData .

${SCRIPTDIR}/fixinclude.sh

