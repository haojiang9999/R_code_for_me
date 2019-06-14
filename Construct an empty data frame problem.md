#### Created a list instead a dataframe and merge it
https://stackoverflow.com/questions/2851327/convert-a-list-of-data-frames-into-one-data-frame
```
mergeGene <- list()
mergeGene[[i]] <- apply(dupTable[1:length(dupTable)-1], 2, sum)
test<- do.call("rbind", mergeGene)
```
