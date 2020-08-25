#!/bin/python3

import os

# Complete the surfaceArea function below.


def surfaceArea(A):
    surf = 0
    for i in range(len(A)):
        for j in range(len(A[i])):
            c = A[i][j]
            s = (c*4)+2

            if i > 0:
                s -= min(c, A[i-1][j])*2
            if j > 0:
                s -= min(c, A[i][j-1])*2

            surf += s

    return surf


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    HW = input().split()

    H = int(HW[0])

    W = int(HW[1])

    A = []

    for _ in range(H):
        A.append(list(map(int, input().rstrip().split())))

    result = surfaceArea(A)

    fptr.write(str(result) + '\n')

    fptr.close()
