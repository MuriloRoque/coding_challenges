#!/bin/python3

import os

# Complete the fairRations function below.


def fairRations(B):
    B = [i % 2 for i in B]
    c = 0
    for i in range(len(B)-1):
        if B[i] and B[i+1]:
            B[i] = 0
            B[i+1] = 0
            c += 1
        elif B[i] and not B[i+1]:
            B[i] = 0
            B[i+1] = 1
            c += 1
    return "NO" if any(B) else c * 2


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    N = int(input())

    B = list(map(int, input().rstrip().split()))

    result = fairRations(B)

    fptr.write(str(result) + '\n')

    fptr.close()
