#!/bin/python3

import os

# Complete the equalizeArray function below.


def equalizeArray(arr):
    collection = {}
    for i in arr:
        collection[i] = collection.get(i, 0) + 1
    return len(arr) - max(collection.values())


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input())

    arr = list(map(int, input().rstrip().split()))

    result = equalizeArray(arr)

    fptr.write(str(result) + '\n')

    fptr.close()
