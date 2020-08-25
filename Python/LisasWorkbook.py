#!/bin/python3

import os

# Complete the workbook function below.


def workbook(n, k, arr):
    p = 1
    res = 0
    for i in arr:
        for j in range(1, i + 1):
            print(p)
            print(j)
            if p == j:
                res += 1
            if j % k == 0 and j >= k and j != i:
                p += 1
        p += 1
    return res


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    nk = input().split()

    n = int(nk[0])

    k = int(nk[1])

    arr = list(map(int, input().rstrip().split()))

    result = workbook(n, k, arr)

    fptr.write(str(result) + '\n')

    fptr.close()
