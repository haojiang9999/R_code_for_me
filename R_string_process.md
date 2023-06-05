### read csv file problem
读取中文乱码
https://www.jianshu.com/p/486c6b98f7cb
```
# 运行以下代码发现系统设置有误
Sys.getlocale()
[1] "LC_COLLATE=Chinese (Simplified)_China.936;LC_CTYPE=English_United States.1252;LC_MONETARY=Chinese (Simplified)_China.936;LC_NUMERIC=C;LC_TIME=Chinese (Simplified)_China.936"
# 解决方法：
Sys.setlocale(category = "LC_ALL", locale = "Chinese") # 将本地语言默认为中文
[1] "LC_COLLATE=Chinese (Simplified)_China.936;LC_CTYPE=Chinese (Simplified)_China.936;LC_MONETARY=Chinese (Simplified)_China.936;LC_NUMERIC=C;LC_TIME=Chinese (Simplified)_China.936"
```


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
#### 7.Remove last n characters from every element in the R vector
https://intellipaat.com/community/15241/how-to-remove-last-n-characters-from-every-element-in-the-r-vector
```
# n = 13
substr(Purity_Ploidy_sampleID,1,nchar(Purity_Ploidy_sampleID)-13)
```
#### 8.Remove all characters after the 3rd occurrence of “-” in each element of a vector
https://stackoverflow.com/questions/41622326/remove-all-characters-after-the-3rd-occurrence-of-in-each-element-of-a-vecto

https://regex101.com/r/qOZMSZ/2

Details:

^ - start of string
([^-]*-[^-]*) - Group 1 capturing 0+ chars other than -, - and 0+ chars other than -
.* - any 0+ chars (in a TRE regex like this, a dot matches line break chars, too.)
The \\1 (\1) is a backreference to the text captured into Group 1.
```
x <- c("aa-bbb-cccc", "aa-vvv-vv", "aa-ddd")
sub("^([^-]*-[^-]*).*", "\\1", x)
## => [1] "aa-bbb" "aa-vvv" "aa-ddd"
```
#### 9.How to remove last n characters from every element in the R vector
https://stackoverflow.com/questions/23413331/how-to-remove-last-n-characters-from-every-element-in-the-r-vector
```
char_array = c("foo_bar","bar_foo","apple","beer")
a = data.frame("data"=char_array,"data2"=1:4)
a$data = substr(a$data,1,nchar(a$data)-3)

data data2
1 foo_ 1
2 bar_ 2
3   ap 3
4    b 4
```
#### 10.Select characters from n to n
```
colnames(RNA_final_mx)<- substr(sampleID, start = 1, stop = 15)
```
