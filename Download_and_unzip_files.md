#### 下载和解压
```
fn <- "http://s.wordpress.org/resources/survey/wp2011-survey.tar.gz"
download.file(fn,destfile="tmp.tar.gz")
untar("tmp.tar.gz",list=TRUE)  ## check contents
untar("tmp.tar.gz")
## or, if you just want to extract the target file:
untar("tmp.tar.gz",files="wp2011-survey/anon-data.csv")
X <- read.csv("wp2011-survey/anon-data.csv")
```
