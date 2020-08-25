#!/bin/python3

import os

# Complete the beautifulTriplets function below.


def beautifulTriplets(d, arr):
    return sum(a + d in arr and a + d + d in arr for a in arr)


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    nd = input().split()

    n = int(nd[0])

    d = int(nd[1])

    arr = list(map(int, input().rstrip().split()))

    result = beautifulTriplets(d, arr)

    fptr.write(str(result) + '\n')

    fptr.close()
