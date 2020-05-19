#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the repeatedString function below.
def repeatedString(s, n):
    num = 0
    for i in range(len(s)):
            if s[i] == "a" and i <= n:
                num += 1
    if (n - len(s)) > 0:
        num *= int(n / len(s))
        if (n % len(s)) != 0:
            for i in (s[:(n % len(s))]):
                if i == "a":
                    num += 1      
    return num

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    s = input()

    n = int(input())

    result = repeatedString(s, n)

    fptr.write(str(result) + '\n')

    fptr.close()
