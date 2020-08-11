#!/bin/python3

import os

#
# Complete the pageCount function below.
#


def pageCount(n, p):
    if (n - p) > (p - 1):
        if p != 1:
            return int(p/2)
        return 0
    if (n-p)/2 > 0 and (n-p)/2 < 1:
        if p % 2 == 0:
            return int((n-p)/2)
        return int((n-p)/2) + 1
    return int((n-p)/2)


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input())

    p = int(input())

    result = pageCount(n, p)

    fptr.write(str(result) + '\n')

    fptr.close()
