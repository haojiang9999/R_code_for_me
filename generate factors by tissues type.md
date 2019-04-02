#### sample type with factors
```
sample.type <- cbind(c("NC", "PT", "LN", "ML", "MP"),
                    c(0, 1, 2, 3, 4))
sample.type <- as.data.frame(sample.type)
# select first character from string
CRC01.sample.type <- substr(unlist(lapply(strsplit(CRC01.id,"_"), '[[', 2)), start = 1, stop = 2)
CRC01.sample.type <- as.data.frame(CRC01.sample.type)
colnames(CRC01.sample.type) <- "V1"
library(tidyverse)
CRC01.sample.type <- left_join(CRC01.sample.type, sample.type, by = "V1")
```
