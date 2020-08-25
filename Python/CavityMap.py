#!/bin/python3

import os

# Complete the cavityMap function below.


def cavityMap(grid):
    for r in range(1, len(grid) - 1):
        R = list(grid[r])
        for c in range(1, len(R) - 1):
            p = R[c + 1], grid[r + 1][c], R[c - 1], grid[r - 1][c]
            if all(map(lambda a: a != 'X' and a < R[c], p)):
                R[c] = 'X'
        grid[r] = ''.join(R)
    return(grid)


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input())

    grid = []

    for _ in range(n):
        grid_item = input()
        grid.append(grid_item)

    result = cavityMap(grid)

    fptr.write('\n'.join(result))
    fptr.write('\n')

    fptr.close()
