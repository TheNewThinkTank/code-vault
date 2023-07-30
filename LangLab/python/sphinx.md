# Sphinx

```BASH
mkdir docs && cd docs

sphinx-quickstart

# edit conf.py

sphinx-apidoc -o ./ ../src
# or:
sphinx-apidoc -o ./source ../src

make clean

make html
```
