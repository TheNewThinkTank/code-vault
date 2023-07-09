# sed

`sed`: stream editor<br>
use it to filter and modify text, e.g. in-place within text-files.

example file, `tonics.txt`:<br>
```TEXT
Delicious tonic combinations:
1. Ginger, Carrot, Apple
2. Orange, Ginger, Lime
3. Ginger, Pineapple, Blood orange
4. Whey protein, Banana, Ginger
5. Oat milk, Ginger
```

example: replace `Ginger` with `Lemon` from `tonics.txt`, without overwriting the file<br>
`sed 's/Ginger/Lemon/' tonics.txt`


