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

function mlist {

while read ff; do
  dir1=`dname ${ff}`
  tmpfile=`mktemp`
  fgrep "#include" ${ff} | sed -e "s@#include[ \t]\+\"@@g" | sed -e "s@\".*@@g" > ${tmpfile}
  while read line; do
    tmpfile2=`mktemp`
    grep $line fcllist.txt > $tmpfile2
    while read line2; do
       if [[ `basename $line2` == $line ]]; then
	  dir2=`dname $line2`
	  if [[ ${dir1} != ${dir2} ]]; then
	    echo "${dir1} -> ${dir2}"
          fi
       fi
    done < $tmpfile2
    rm ${tmpfile2}
  done < ${tmpfile}
  rm ${tmpfile}
done < fcllist.txt
}

echo "digraph G {"
mlist | sort | uniq
echo "}"
