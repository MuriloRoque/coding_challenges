#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the anagram function below.
def anagram(s):
    n = 0
    if len(s) % 2 != 0:
        return -1
    else:
        s1 = s[slice(0, int(len(s)/2))]
        s2 = s[slice(int(len(s)/2), len(s))]
        for i in (s1):
            res = s2.find(i)
            s2 = s2.replace(i, '', 1)
            if res == -1:
                n += 1
        return n

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    q = int(input())

    for q_itr in range(q):
        s = input()

        result = anagram(s)

        fptr.write(str(result) + '\n')

    fptr.close()
