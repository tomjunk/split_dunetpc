#!/bin/sh

source ./defvars.sh

touch ${TARGETDIR}/splitproducts
rm -rf ${TARGETDIR}/splitproducts
mkdir ${TARGETDIR}/splitproducts

cd ${TARGETDIR}/splitproducts
cp -r /cvmfs/dune.opensciencegrid.org/products/dune/.upsfiles .
cp -r /cvmfs/dune.opensciencegrid.org/products/dune/.updfiles .

