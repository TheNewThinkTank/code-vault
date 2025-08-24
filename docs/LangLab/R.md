# R

## rotate x-label in ggplot

Given an ggplot, `q`:
```R
q + theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
```
