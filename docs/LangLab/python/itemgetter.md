# Itemgetter

```Python
from operator import itemgetter

elements: list[int] = [1, 2, 3, 4, 5]
first_and_last: itemgetter = itemgetter(0, -1)
print(first_and_last(elements))

items: dict[str, int] = {'a': 1, 'b': 2, 'c': 3, 'd': 4}
a_and_c: itemgetter = itemgetter('a', 'c')
print(a_and_c(items))
```
