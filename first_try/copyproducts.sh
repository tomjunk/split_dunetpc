#!/bin/sh

source ./defvars.sh

cp -r ${SPLITDIR}/localProducts*/* ${TARGETDIR}/splitproducts
touch ${TARGETDIR}/splitproducts/setup
rm ${TARGETDIR}/splitproducts/setup
