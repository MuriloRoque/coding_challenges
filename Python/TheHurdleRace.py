#!/bin/python3

import os

# Complete the hurdleRace function below.


def hurdleRace(k, height):
    n = max(height) - k
    if n < 0:
        n = 0
    return n


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    nk = input().split()

    n = int(nk[0])

    k = int(nk[1])

    height = list(map(int, input().rstrip().split()))

    result = hurdleRace(k, height)

    fptr.write(str(result) + '\n')

    fptr.close()
