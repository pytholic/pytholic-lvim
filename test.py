import numpy as np
import os

x = np.array([1, 2, 3])
y = [(5, 6, 7)]


def func(a, b):
    if a > b:
        return a


e = 32
print(x)


class MinStack:
    def __init__(self):
        self.stack = []

    def push(self, val: int) -> None:
        self.stack.append(val)

    def pop(self) -> None:
        self.stack.pop()

    def top(self) -> int:
        self.stack.pop(0)

    def getMin(self) -> int:
        if not self.stack:
            return -1
