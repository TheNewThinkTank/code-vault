# tr

tr - translate or delete characters.

most often used together with other commands.<br>
example, make string all caps:<br>
`echo "Code Vault" | tr [a-z] [A-Z]`<br>
the first set `[a-z]` is replaced by the second set `[A-Z]`.

alternatively,<br>
`echo "Code Vault" | tr [:lower:] [:upper:]`<br>

alternatively,<br>
`tr [a-z] [A-Z] < some-file.txt`<br>

deletion (delete all lower-case characters):<br>
`echo "Code Vault" | tr -d [a-z]`<br>

squeeze (`s`) out duplicate characters (e.g. k):<br>
`cat some-file.txt | tr -s "k"`

delete every alphabet character:<br>
`cat some-file.txt | tr -d [:alpha:]`

replace one character with another:<br>
`cat some-file.txt | tr "$" "#"`
