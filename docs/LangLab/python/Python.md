# Python

## Data types and methods

list:
- zip
- enumerate
- reverse list: `some_list[::-1]`

dict:
- get
- setdefault

example
```Python
student_grades = {}

spanish_grades = student_grades.setdefault("Roberto", {})
spanish_grades["spanish"] = 90
print(student_grades)  # {"Roberto": {"spanish": 90}}
```

## for-else and while-else

```Python
nums = [1, 2, 3, 4, 5,]
find = 4

for num in nums:
    if num == find:
        print(f"found {find} in the list.")
        break
else:
    # This block will execute only if the loop completed without encountering a 'break'
    print(f"{find} was not found in the list.")


count = 5

while count > 0:
    print(count)
    count -= 1
else:
    # This block will execute once the condition in the while statement is no longer true
    print("Liftoff!")
```

## print

pretty printing
```Python
from pprint import pprint as pp

pp(some_dict)
```

```Python
nums = [1, 2, 3, 4, 5,]

print(*nums, sep="-", end="no new line after this string")
```

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

use lambda function to sort dictionary by specific key
```Python
people = [
    {"name": "Oppenheimer", "age": 62},
    {"name": "Einstein", "age": 76},
    {"name": "Schubert", "age": 31},
]

people.sort(key=lambda person: person['age'])
```

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

## Itertools

## Functools

## Timing

## Profiling

## Logging

## Pathlib

## Cookiecutter and Cruft

## build and publish package
