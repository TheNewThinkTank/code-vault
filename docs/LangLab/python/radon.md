# radon

[https://github.com/adminho/python-examples/tree/master/love%20formula](https://github.com/adminho/python-examples/tree/master/love%20formula)
[https://pypi.org/project/radon/](https://pypi.org/project/radon/)

`pip install radon`

[https://radon.readthedocs.io/en/latest/](https://radon.readthedocs.io/en/latest/)
[https://github.com/rubik/radon/issues/64](https://github.com/rubik/radon/issues/64)

``` python
from radon.raw import analyze
from radon.metrics import mi_visit
from radon.complexity import cc_visit
from radon.cli.tools import iter_filenames

# iter through filenames starting from the current directory
# you can pass ignore or exclude patterns here (as strings)
# for example: ignore='tests,docs'for filename in iter_filenames(['.']):

with open(filename) as fobj:
	source = fobj.read()

# get cc blocks
blocks = cc_visit(source)

# get MI score
mi = mi_visit(source, True)

# get raw metrics
raw = analyze(source)

# Now do what you want with the data
```
