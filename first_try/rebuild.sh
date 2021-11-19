#!/bin/sh
source ./defvars.sh
source ${SCRIPTDIR}/setupsplita.sh
mrb zd
mrbsetenv
mrb i -j16
