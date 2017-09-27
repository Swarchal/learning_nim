#[
    rosalind.info/problems/dna
    counting nucleotides in a DNA sequence
]#

import os
import strutils

proc readfile(input: string): string =
    # read in file as string from command args
    let f = open(input, fmRead)
    result = ""
    for line in f.lines:
        result.add(line)

var seq:string = readfile(paramStr(1))

for nuc in ["A", "C", "G", "T"]:
    stdout.write seq.count(nuc), " "
echo ""