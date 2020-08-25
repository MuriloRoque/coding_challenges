#!/bin/python3

# Complete the insertionSort1 function below.


def insertionSort1(n, arr):
    target = arr[-1]
    idx = n-2

    while (target < arr[idx]) and (idx >= 0):
        arr[idx+1] = arr[idx]
        print(*arr)
        idx -= 1

    arr[idx+1] = target
    print(*arr)


if __name__ == '__main__':
    n = int(input())

    arr = list(map(int, input().rstrip().split()))

    insertionSort1(n, arr)
