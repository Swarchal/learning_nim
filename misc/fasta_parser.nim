# example of a simple fasta file parser
# returns a table (hash map/ dictionary)
# of {name : sequence}

import os, strutils, tables

proc parse_fasta(file: string):Table[string, string] =

  var
    f = open(file, fmRead)
    store = initTable[string, string]()
    name : string

  for line in f.lines:
    if line.startswith(">"):
      name = line[1..line.high]
      store[name] = ""
    else:
      store[name].add(line)

  return store

if paramCount() == 1:
  echo parse_fasta(paramStr(1))
else:
  echo parse_fasta("example.fasta")
