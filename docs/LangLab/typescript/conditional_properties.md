# Conditional properties

```TypeScript
type Props = {
    name: string
} & (CardioProps | StrengthProps)

type CardioProps = {
    training: 'cardio'
    vo2_max: number
}

type StrengthProps = {
    training: 'strength'
    one_rm: number
}

const Child = (props: Props) => {

    if (props.training === 'cardio') {
        console.log(props.vo2_max)
    } else if (props.training === 'strength') {
        console.log(props.one_rm)
    }

    return <div>child</div>
}
```
