# Given a positive integer n <= 25
# Return the n'th fibonacci number

proc fibonacci(n: int): int =
    var
        first = 0
        second = 1
    for i in 0 .. <n:
        swap first, second
        second += first
    result = first


echo fibonacci(25)
