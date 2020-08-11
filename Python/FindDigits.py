#!/bin/python3

import os

# Complete the findDigits function below.


def findDigits(n):
    s = str(n)
    res = 0
    for i in s:
        if int(i) != 0:
            if n % int(i) == 0:
                res += 1
    return res


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    t = int(input())

    for t_itr in range(t):
        n = int(input())

        result = findDigits(n)

        fptr.write(str(result) + '\n')

    fptr.close()
