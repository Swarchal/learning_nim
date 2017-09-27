import os
import strutils

proc readfile(input: string): string =
    # read in file as string from command args
    let f = open(input, fmRead)
    result = ""
    for line in f.lines:
        result.add(line)


proc reverse(sequence: string): string =
    result = newString(sequence.len)
    for index, nucleotide in sequence:
        result[sequence.high - index] = nucleotide


proc complement(sequence: string): string =
    result = ""
    var cnuc: char
    for nuc in sequence:
        if nuc == 'C':
            cnuc = 'G'
        elif nuc == 'G':
            cnuc = 'C'
        elif nuc == 'T':
            cnuc = 'A'
        elif nuc == 'A':
            cnuc = 'T'
        else:
            echo "ERROR! invalid nucleotide"
            break
        result.add(cnuc)


let seq = readfile(paramStr(1))

let ans = reverse(complement(seq))

echo ans
