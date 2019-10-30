#### 1.seperate string by special character
```
# CRC10.id is sample name vector
unlist(lapply(strsplit(CRC10.id,"_"), '[[', 2))
# Select the last one in the list
GeneID <- unlist(lapply(strsplit(GeneNames,"_"), tail, 1))
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
#### 4.R grep: is there an AND operator?
https://stackoverflow.com/questions/13187414/r-grep-is-there-an-and-operator
```
grepl("(?=.*TPM)(?=.*CRC09)", fileNames, perl = T)
x <- c("imageUploaded,people.jpg,more,comma,separated,stuff", "imageUploaded", "people.jpg")

grepl("(?=.*imageUploaded)(?=.*people\\.jpg)", x, perl = TRUE)
#-----
[1]  TRUE FALSE FALSE
```
#### 5.Replace all specific character in sample names
```
rownames(TCGA.sampelType)<- gsub("-",".",TCGA.sampelType$sample)
```
#### 6.Remove part of string after “.”
https://stackoverflow.com/questions/10617702/remove-part-of-string-after/44547135
```
gsub("\\..*","",genelist)
```

