#!/bin/sh

function dname {
  oname=$1
  lastoname=$oname
  while [[ `basename $oname` != dunetpc ]]; do
    lastoname=$oname
    oname=`dirname $oname`
  done
  outputname=`basename $lastoname`
  if [[ $outputname == "dune" ]]; then
    oname=$1
    lastoname=$oname
    while [[ `basename $oname` != dune ]]; do
      lastoname=$oname
      oname=`dirname $oname`
    done
    outputname=`basename $lastoname`
  fi
  echo $outputname
}

dname /dune/app/users/trj/splitter10/srcs/dunetpc/fcl/protodunedp/mcc/mcc10/prodcosmics_corsika_protodunedp_combined_geng4detsim.fcl


dname /dune/app/users/trj/splitter10/srcs/dunetpc/dune/protodunedp/mcc/mcc10/prodcosmics_corsika_protodunedp_combined_geng4detsim.fcl
