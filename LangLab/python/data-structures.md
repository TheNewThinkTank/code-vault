# Data Structures

## Deque

```Python
from collectiones import deque

people = ['Mario', 'Luigi', 'Toad', 'Peach']
queue = deque(people)

queue.append('Bowser')
queue.popleft()
queue.appendleft('Daisy')
queue.rotate(-1)
queue.extend(['Shy Guy', 'Yoshi']). # or in front: extendleft
queue.reverse()
print(queue)
```

double ended queue.

`list.pop` is slow, as elements from right needs to be index-shifted one
place to the left afterwards, with an **O(n)**.
If done in a loop, this grows to space complexity of **O(n^2)**.
Deque might be faster, as it only updates the pointers/head.
