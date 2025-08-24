# Convert Filetype

``` python
def get_txt_from_py(filename_orig: str):
    """."""
    try:
        import pypandoc
        return pypandoc.convert(filename_orig, 'txt')
    except Exception as ex:
        print(f"Unable to convert {filename_orig} to txt: '{}'".format(ex))
        return ""


def long_lines(filename: str):
     """."""
     with open(filename) as f:
        for line_no, line in enumerate(f):   
            # Remember not to count the newline character
            if len(line.strip()) > 79:
                print(line_no, line)


def main():
     filename_orig = "read.py"
     filename = get_txt_from_py(filename_orig)
     long_lines(filename)


if __name__ == "__main__":
     main()
```
