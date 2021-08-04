#!/bin/sh

TARGETDIR=/build/trj
SPLITDIR=/build/trj/split_target

touch ${TARGETDIR}/splitproducts
rm -rf ${TARGETDIR}/splitproducts
mkdir ${TARGETDIR}/splitproducts

cd ${TARGETDIR}/splitproducts
cp -r /cvmfs/dune.opensciencegrid.org/products/dune/.upsfiles .
cp -r /cvmfs/dune.opensciencegrid.org/products/dune/.updfiles .

