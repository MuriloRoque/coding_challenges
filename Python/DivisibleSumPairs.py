#!/bin/python3

import os

# Complete the divisibleSumPairs function below.


def divisibleSumPairs(n, k, ar):
    res = sum((i+j) % k == 0 for x, i in enumerate(ar) for j in ar[x+1:])
    return res


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    nk = input().split()

    n = int(nk[0])

    k = int(nk[1])

    ar = list(map(int, input().rstrip().split()))

    result = divisibleSumPairs(n, k, ar)

    fptr.write(str(result) + '\n')

    fptr.close()
