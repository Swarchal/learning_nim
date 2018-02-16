import os, math, sequtils, algorithm, strutils

proc print(sequence: seq[any]) =
  for i in sequence:
    stdout.write(i, " ")
  stdout.write("\n")

proc permute(n: int) =
  var
    n_permutations = fac(n)
    sequence = to_seq(1..n)
    counter = 1
  echo n_permutations
  print(sequence)
  while counter < n_permutations:
    sequence.nextPermutation()
    print(sequence)
    counter += 1

var
  input = paramStr(1)
  input_n = parse_int(input.string)
permute(input_n)
