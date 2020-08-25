#!/bin/python3

import math
import os

# Complete the howManyGames function below.


def howManyGames(p, d, m, s):
    kmax = ((p-m) // d)
    fmax = (kmax+1)*p-((kmax+1)*kmax*d) / 2

    if (s >= fmax):
        return int(kmax+1 + (s-fmax)/m)
    else:
        b = p*1.0/d - 0.5
        g = b - ((b*b-2/d*(s-p))**0.5)
        return int(math.ceil(g))


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    pdms = input().split()

    p = int(pdms[0])

    d = int(pdms[1])

    m = int(pdms[2])

    s = int(pdms[3])

    answer = howManyGames(p, d, m, s)

    fptr.write(str(answer) + '\n')

    fptr.close()
