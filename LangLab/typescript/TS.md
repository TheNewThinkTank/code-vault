# TypeScript

## Resources

[book](https://basarat.gitbook.io/typescript/)

[Doc](https://www.typescriptlang.org/)

## Language features

Strongly typed.<br>
Superset of JavaScript.

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

## configuration

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
```

`lodash` comes without built-in types.<br>
install types:<br>
`npm i -D @types/lodash`

## Type annotations

```TypeScript
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

## Custom types

name commonly in PascalCase<br>

```TypeScript
// type Style = string;
type Style = 'bold' | 'italic';  // union type

let font: Style;

font = 'bold'

// Allow any additional fields with the any keyword
interface Person {
    first: string;
    last: string;
    [key: string]: any
}

const person: Person = {
    first: 'John',
    last: 'Connor'
}

const person2: Person = {
    first: 'Jonas',
    last: 'Vingegaard',
    gc_cyclist: true
}

```

## Types in functions

```TypeScript
function pow(x: number, y: number): string {
    return Math.pow(x, y).toString();
}


function pow(x: number, y: number): void {
    Math.pow(x, y).toString();
}
```

## Arrays

```TypeScript
const arr: number[] = []

arr.push(1)
arr.push('23')
arr.push(false)

const arr: Person[] = []

// Tuple with optional values
type MyList = [number?, string?, boolean?]
```

## Generics

allow for specifying internal type later in the code, by using `<T>`
```TypeScript
class Observable<T> {
    constructor(public value: T) {}
}

let x: Observable<number>;

let y: Observable<Person>;

let z = new Observable(23);  // implicitly get number type
```

## using undefined

```TypeScript
type Animal = {
    name: string
    legs?: number
}


const printAnimal = (animal: Animal) => {
    const x = (animal.legs ? animal.legs : 0)
}


const dog = {
    name = "kerberos"
}


printAnimal(dog)
```
