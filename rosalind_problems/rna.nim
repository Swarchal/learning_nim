import os
import strutils

proc readfile(input: string): string =
    # read in file as string from command args
    let f = open(input, fmRead)
    result = ""
    for line in f.lines:
        result.add(line)


var seq = readfile(paramStr(1))

echo seq.replace("T", "U")
