#!/usr/bin/env python

import sys

print('digraph G {')

olines = set()
for inputline_tmp in sys.stdin:
    inputline = inputline_tmp.rstrip()
    ib = inputline.find('/')
    outstring1=inputline[0:ib]
    if outstring1 == '3x1x1dp':
        outstring1 = '311dp'
    ilen = len(inputline)

    iinc = inputline.find('include')
    incstring = inputline[iinc+7:ilen]
    inclen = len(incstring)

    ic = incstring.find('dune/')
    if ic == -1:
        continue
    cstring = incstring[ic+5:inclen]
    id = cstring.find('/')
    dstring = cstring[0:id]
    #print("debug")
    #print(inputline)
    #print(outstring1)
    #print(incstring)
    #print(cstring)
    #print(dstring)

    if dstring == '3x1x1dp':
        dstring = '311dp'
    ostring = outstring1 + ' -> ' + dstring
    if dstring != outstring1:
      #  print(inputline)
      #  print(ostring)
        olines.add(ostring)

print(*olines,sep='\n')

print('}')
