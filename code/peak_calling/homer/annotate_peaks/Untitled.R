setwd('Desktop/CSHL_Ware/chip_seq/Sorghum_bicolor_encode/TSS/tes/')

G3_P_K4me3_rep1_tes<-read.table("G3_P_K4me3_rep1_goodtes2_rdCount.txt",header=TRUE)
G3_P_K4me3_rep2_tes<-read.table("G3_P_K4me3_rep2_goodtes2_rdCount.txt",header=TRUE,sep='\t')


G3_P_K27me3_rep1_tes<-read.table("G3_P_K27me3_rep1_goodtes2_rdCount.txt",header=TRUE,sep='\t')
G3_P_K27me3_rep1_exonRdCount<-as.vector(colSums(G3_P_K27me3_rep1_tes))

plot(1:1501, G3_P_K27me3_rep1_exonRdCount[3:1503])






setwd('../exon')

G3_P_K4me3_rep2_exon<-read.table("G3_P_K4me3_rep2_goodExon_rdCount.txt",header=TRUE)

G3_P_K4me3_rep2_exonRdCount<-as.vector(colSums(G3_P_K4me3_rep2_exon))

plot(1:1500, G3_P_K4me3_rep2_exonRdCount[3:1502])
