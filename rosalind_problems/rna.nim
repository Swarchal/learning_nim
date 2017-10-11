# read in file of DNA nucleotides and convert to RNA nucleotides

import os
import strutils

let
  f = open(paramStr(1), fmRead)

for line in f.lines:
    echo line.replace("T", "U")

