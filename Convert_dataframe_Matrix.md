#### convert factor dataframe to numeric matrix
```
x <- rownames(dataframe)
matrix <- sapply(dataframe, function(x) as.numeric(as.character(x)))
rownames(matrix) <- x
```
