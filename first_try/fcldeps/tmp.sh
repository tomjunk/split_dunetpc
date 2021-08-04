#!/bin/sh

while read ff; do
  fgrep "#include" ${ff} | sed -e "s@#include[ \t]\+\"@@g" | sed -e "s@\".*@@g" 
done < fcllist.txt
