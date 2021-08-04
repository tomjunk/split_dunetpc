#!/bin/sh

TARGETDIR=/build/trj
SPLITDIR=/build/trj/split_target

cp -r ${SPLITDIR}/localProducts*/* ${TARGETDIR}/splitproducts
touch ${TARGETDIR}/splitproducts/setup
rm ${TARGETDIR}/splitproducts/setup
