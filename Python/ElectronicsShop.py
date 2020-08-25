#!/bin/python3

import os

#
# Complete the getMoneySpent function below.
#


def getMoneySpent(keyboards, drives, b):
    arr = []
    for x in keyboards:
        for y in drives:
            if x + y <= b:
                arr.append(x+y)
    if len(arr) == 0:
        return -1
    return max(arr)


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    bnm = input().split()

    b = int(bnm[0])

    n = int(bnm[1])

    m = int(bnm[2])

    keyboards = list(map(int, input().rstrip().split()))

    drives = list(map(int, input().rstrip().split()))

    #
    # The maximum amount of money she can spend on a keyboard and USB drive,
    # or -1 if she can't purchase both items
    #

    moneySpent = getMoneySpent(keyboards, drives, b)

    fptr.write(str(moneySpent) + '\n')

    fptr.close()
