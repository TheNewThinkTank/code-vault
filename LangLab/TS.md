# TypeScript

## Resources

[book](https://basarat.gitbook.io/typescript/)

[Doc](https://www.typescriptlang.org/)

## Language features
Strongly typed.<br>
Superset of JavaScript.

## Installation
global installation:<br>
`npm i -g typescript`

## compilation
compilation (to JS, EcmaScript 3) with `tsc`.

check version: `tsc --version`.

example, `index.ts`:

```TypeScript
console.log('hello code-vault')


async function hello() {
    return 'code-vault'
}


const url = new URL('...')  // . for auto-complete
```

compile: `tsc index.ts`

create a configuration, `tsconfig.json`, for the compiler:<br>
`touch tsconfig.json`

then add following content (specifying latest version of JS):<br>
```JSON
{
    "compilerOptions": {
        "target": "esnext",
        "watch": true,
        "lib": ["dom", "es2017"]
    }
}
```

`target`: version of JS to compile into.
`watch`: automatically recompile for every file change (save)
`lib`: automatically include typing for certain environments

## Third party libraries
`npm i lodash`

creates `node_modules` folder, with the source code for `lodash`.

`index.ts`:

```TypeScript
import * as _ from 'lodash';


async function hello() {
    return 'code-vault'
}


_.pickBy()


// implicit type
let lucky = 23;

// opt out of the type system with the any keyword
let also_lucky: any = 23;

// then also_lucky can be re-assigned to any value (and the compiler won't type-check it)
also_lucky = '23'

// without value or type assignment, a new variable is assigned the any type:
let very_lucky;
very_lucky = '23'
very_lucky = 23

// if there is an implicit type, don't botherexplicitly typing it.
// instead of:
let super_lucky: number = 23;
// do this instead:
let super_lucky = 23;

// built in types from JS are available, and we can also built our own types


```

`lodash` comes without built-in types.<br>
install types:<br>
`npm i -D @types/lodash`




## Type annotations

## Custom types

## Types in functions

## Arrays

## Generics
