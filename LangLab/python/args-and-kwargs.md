# Args and Kwargs

```Python
def func(foo, *args, **kwargs):
	print(foo)
	for arg in args:
		print(arg)
	for k, v in kwargs.items():
		print(k)
		print(v)


func("foo", [1,2,3], {"a": "A", "b": "B"})
```
