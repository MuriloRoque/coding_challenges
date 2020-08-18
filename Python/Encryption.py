#!/bin/python3

import math
import os

# Complete the encryption function below.


def encryption(s):
    s = s.strip()
    num = len(s)
    row = math.floor(math.sqrt(num))
    column = math.ceil(math.sqrt(num))
    j = 0
    res = ''
    for j in range(column):
        i = 0
        for i in range(row + 1):
            if column * i + j < len(s):
                res += s[column * i + j]
            i += 1
        res += ' '
        j += 1
    return res


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    s = input()

    result = encryption(s)

    fptr.write(result + '\n')

    fptr.close()
