#!/bin/python3

import os

# Complete the timeInWords function below.


def timeInWords(h, m):
    n = [
        "zero",
        "one",
        "two",
        "three",
        "four",
        "five",
        "six",
        "seven",
        "eight",
        "nine",
        "ten",
        "eleven",
        "twelve",
        "thirteen",
        "fourteen",
        "quarter",
        "sixteen",
        "seventeen",
        "eighteen",
        "nineteen",
        "twenty",
        "twenty one",
        "twenty two",
        "twenty three",
        "twenty four",
        "twenty five",
        "twenty six",
        "twenty seven",
        "twenty eight",
        "twenty nine",
        "half"
    ]
    if m == 0:
        return n[h] + " o' clock"
    if m <= 30:
        if m == 15 or m == 30:
            return n[m] + " past " + n[h]
        if m == 1:
            return n[m] + " minute past " + n[h]
        return n[m] + " minutes past " + n[h]
    elif m > 30:
        if m == 45:
            return n[29 - m] + " to " + n[h + 1]
        if m == 1:
            return n[29 - m] + " minute to " + n[h + 1]
        return n[29 - m] + " minutes to " + n[h + 1]


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    h = int(input())

    m = int(input())

    result = timeInWords(h, m)

    fptr.write(result + '\n')

    fptr.close()
