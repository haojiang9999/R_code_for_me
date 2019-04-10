#### 1.seperate string by special character
```
# CRC10.id is sample name vector
unlist(lapply(strsplit(CRC10.id,"_"), '[[', 2))
strsplit(string,split='|', fixed=TRUE)
```
#### 2.Extract the first 2 Characters in a string
https://stackoverflow.com/questions/38750535/extract-the-first-2-characters-in-a-string
```
x <- c("75 to 79", "80 to 84", "85 to 89")
substr(x, start = 1, stop = 2)
# [1] "75" "80" "85"
```
#### 3.grep using a character vector with multiple patterns
https://stackoverflow.com/questions/7597559/grep-using-a-character-vector-with-multiple-patterns
```
toMatch <- c("A1", "A9", "A6")
#Then you can create your regular expression directly from this.

matches <- unique (grep(paste(toMatch,collapse="|"), 
                        myfile$Letter, value=TRUE))
```
