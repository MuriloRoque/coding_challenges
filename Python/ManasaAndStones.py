#!/bin/python3

import os

# Complete the stones function below.


def stones(n, a, b):
    return sorted(list({(n - i - 1) * a + i * b for i in range(n)}))


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    T = int(input())

    for T_itr in range(T):
        n = int(input())

        a = int(input())

        b = int(input())

        result = stones(n, a, b)

        fptr.write(' '.join(map(str, result)))
        fptr.write('\n')

    fptr.close()
