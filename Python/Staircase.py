#!/bin/python3

# Complete the staircase function below.


def staircase(n):
    i = n
    while i > 0:
        i -= 1
        print(' ' * i + '#' * (n - i))


if __name__ == '__main__':
    n = int(input())

    staircase(n)
