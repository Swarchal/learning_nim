# rosalind/revp

import os, strutils, revc

proc readfile(input: string): string =
    let f = open(input, fmRead)
    result = ""
    for line in f.lines:
      if not line.startswith(">"):
        result.add(line)


proc possible_window_sizes(min: int = 4, max: int = 12): seq[int] =
  result = @[]
  for i in min..max:
    if i mod 2 == 0:
      result.add(i)


proc is_restriction_site(s: string): bool =
  let
    first_half  = s[0..s.high div 2]
    second_half = s[s.len div 2..s.len]
  return first_half == second_half.reverse_complement


proc main() =
  var
    sequence = read_file(paramStr(1))
    sub_sequence: string
  for window_size in possible_window_sizes():
    for i in 0..sequence.len - window_size:
      sub_sequence = sequence[i..i + window_size - 1]
      if sub_sequence.is_restriction_site:
        echo i + 1, " ", window_size


if isMainModule:
  main()
    