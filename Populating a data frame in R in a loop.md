#### Populating a data frame in R in a loop
https://stackoverflow.com/questions/13442461/populating-a-data-frame-in-r-in-a-loop/13442654#13442654?newreg=693841ec8e5a402b9d1bbef25b41bd60

You could do it like this:
```
iterations = 10
 variables = 2

 output <- matrix(ncol=variables, nrow=iterations)

 for(i in 1:iterations){
  output[i,] <- runif(2)

 }

 output
 ```
 and then turn it into a data.frame
 ```
  output <- data.frame(output)
 class(output)
 ```
 what this does:

1. create a matrix with rows and columns according to the expected growth insert 
2. random numbers into the matrix
3. convert this into a dataframe after the loop has finished.
