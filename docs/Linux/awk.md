# awk

awk: scripting language to manipulate text

example text file (with turtle name, banner-color, personality), `tmnt.txt`:
```TEXT
leonardo blue leader
raphael red hothead
michelangelo orange party-animal
donatello purple geek
```

awk as default sees spaces as delimiters for fields.

example, print everything:<br>
`awk '{print}' tmnt.txt`<br>
or (`0` represents the entire file),<br>
`awk '{print $0}' tmnt.txt`


example, show specific (first) field only:<br>
`awk '{print $1}' tmnt.txt`

example, show specific (third) field only:<br>
`awk '{print $3}' tmnt.txt`

example, print multiple fields (`1` and `3`):<br>
`awk '{print $1,$3}' tmnt.txt`

chaining commands into awk:<br>
`ls -l | awk '{print $1}'`

example:<br>
`echo "Hello from code-vault" | awk '{print $1,$3}'`

example: getting last field using number of fields `NF` (in this case 3):<br>
`awk '{print $NF}' tmnt.txt`

example: no space delimiters<br>
this won't work:<br>
`awk '{print $2}' /etc/passwd`<br>
because, e.g.:<br>
`cat /etc/passwd | grep gus`<br>
instead, set a different field separator, `F`:<br>
`awk -F':' '{print $2}' /etc/passwd`<br>

to find out which shell each user of the system is using,<br>
`awk -F':' '{print $1,$7}' /etc/passwd`<br>
