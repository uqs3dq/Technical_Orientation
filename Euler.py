## Problem 1
sum = 0

for x in range(1000):
    if x%3 == 0 or x%5 == 0:
        sum += x

print(sum)

## Problem 2
cur = 1
next = 1
evensum = 0

while next < 4000000:
    temp = cur + next
    cur = next
    next = temp

    if next%2 == 0:
        evensum += next

print(evensum)

## Problem 3
from sympy import *

target = 600851475413
factor = 2
largest = 0

while factor < target/2:
    if target%factor == 0:
        largest = factor
    factor = nextprime(factor)

print(largest)