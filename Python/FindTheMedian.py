#!/bin/python3

import os

# Complete the findMedian function below.


def findMedian(arr):
    arr = sorted(arr)
    return arr[len(arr)//2]


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input())

    arr = list(map(int, input().rstrip().split()))

    result = findMedian(arr)

    fptr.write(str(result) + '\n')

    fptr.close()
