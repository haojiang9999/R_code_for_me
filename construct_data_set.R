sampleName <- colnames(GSE97693_Tang_TPM_cells) # extrac sample names
sampleName <- gsub(".TPM.txt.gz","",sampleName) # remove something
sampleName <- gsub("_scTrioSeq2Rna_scTrioSeq2Rna_","_scTrioSeq2Rna_",sampleName)
# separete names into different feilds
pd<-as.data.frame(unlist(lapply(strsplit(sampleName,"_"), '[[', 1)))
# unlist(lapply(strsplit(sampleName,"_"), '[[', 6))
pd$pateintID <-unlist(lapply(strsplit(sampleName,"_"), '[[', 3)) 
pd$sampleType <- unlist(lapply(strsplit(sampleName,"_"), '[[', 4))
colnames(pd)[1] <- "sampleID" 
rownames(pd) <- sampleName
# gene features
geneName <- rownames(GSE97693_Tang_TPM_cells)
fd <- as.data.frame(geneName)
colnames(fd) <- "gene_short_name"
rownames(fd) <- geneName
# construct  CellDataSet
expr <- as.matrix(GSE97693_Tang_TPM_cells)
colnames(expr) <- sampleName
exprCGS <- newCellDataSet(expr,
                          phenoData = as(pd, "AnnotatedDataFrame"), 
                          featureData = as(fd, "AnnotatedDataFrame"))
