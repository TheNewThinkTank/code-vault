# Python

## walrus operator

example
```Python
numbers = [2, 8, 0, 1, 1, 9, 7, 7]

description = {
    "length": (num_length := len(numbers)),
    "sum": (num_sum := sum(numbers)),
    "mean": num_sum / num_length,
}

print(description)  # {'length': 8, 'sum': 35, 'mean': 4.375}
```

## comprehensions

list, dict, set, generator

e.g.<br>
`some_list = [a for a in b if some_condition]`

## Functional

### lambda functions
anonymous functions<br>
`z = lambda x: x * 3`

### map
```Python
some_list = [1, 2, 4, 5, 6]
new_list = map(lambda z: z + 5, some_list)
```

### filter

### reduce

## unknown number of function arguments
```Python
def some_function(*args, **kwargs):
    print(args, kwargs)


some_function(5, y='five')
```

## Swap values
```Python
a, b = b, a
```

## Ternary / in-line if statement
```Python
some_var = 0 if condition else 1
```

## Switch-case / structural pattern matching

## OOP dunder methods

```Python
__init__
__eq__
__repr__
__call__
```

## Decorators
e.g. the built-in `@staticmethod`

## Generators
e.g. if you only need access to a few items at a time,
```Python
def firstn(n):
    num = 0
    while num < n:
        yield num
        num += 1


sum_of_first_n = sum(firstn(1_000))
```

## context managers
```Python
with open("some_file.txt", "r") as rf:
    data = rf.readlines()
```

## Metaclasses

## Concurrency and parallellism
GIL.

multi-processing / multi-threading

## Testing
TDD with Pytest

## Collections

## Itertools

## Functools

## Timing

## Profiling

## Logging

## Pathlib

## Cookiecutter and Cruft

## build and publish package
