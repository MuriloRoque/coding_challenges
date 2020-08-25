#!/bin/python3

import os

#
# Complete the 'pickingNumbers' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY a as parameter.
#


def pickingNumbers(a):
    big = max(a)
    n = 0
    maxi = 0
    while n < big:
        b = []
        for i in a:
            if i == n or i == n + 1:
                b.append(i)
        if len(b) > maxi:
            maxi = len(b)
        n += 1
    return maxi


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input().strip())

    a = list(map(int, input().rstrip().split()))

    result = pickingNumbers(a)

    fptr.write(str(result) + '\n')

    fptr.close()
