# list all files in directory
# first argument: directory
# second argument: (optional) pattern to search for

import os

var
    dir = paramStr(1)
    pattern = "*"

# if second arg passed, set pattern as the second arg
if paramCount() == 2:
    pattern = paramStr(2)


for file in walkFiles(dir & pattern):
    echo file
