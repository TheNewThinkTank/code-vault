# Regular Expressions

## Resourses
[rexegg](https://www.rexegg.com/)<br>
[regex101](https://regex101.com/)<br>

## Quantifiers
`*`: 0 or more
`+`: 1 or more
`?`: 0 or 1
`{3}`: exact number
`{3,4}`: range of numbers (minimum, maximum)

## Special characters
`.`: any character except new line
`\d`: digit (0-9)
`\D`: not a digit (0-9)
`\w`: word character (a-z, A-Z, 0-9, _)
`\W`: not a word character
`\s`: whitespace (space, tab, newline)
`\S`: not whitespace (space, tab, newline)
`\b`: word boundary
`\B`: not a word boundary

## Anchors
`^`: beginning of string
`$`: end of string

## Character sets
`[]`: matches characters in brackets
`[^ ]`: matches characters NOT in brackets
`|`: either or

## Capture groups
`( )`: group

## Back referencing

## Positive / Negative Look-ahead / Look-behind

## Examples
email:<br>
`[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+`
