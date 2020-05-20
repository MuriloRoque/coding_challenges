#!/bin/python3

t = int(input().strip())
for a0 in range(t):
    n = int(input().strip())
    i = 0
    j = 1
    result = 0
    while j <= n:
        if j % 2 == 0:
            result = result + j
        (i, j) = (j, i+j)
    print(result)
