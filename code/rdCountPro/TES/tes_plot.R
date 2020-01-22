setwd('Desktop/CSHL_Ware/chip_seq/Sorghum_bicolor_encode/TSS/tes/')

G3_P_K4me3_rep1_tes<-read.table("G3_P_K4me3_rep1_goodtes2_rdCount.txt",header=TRUE)
G3_P_K4me3_rep2_tes<-read.table("G3_P_K4me3_rep2_goodtes2_rdCount.txt",header=TRUE,sep='\t')


G3_P_K27me3_rep1_tes<-read.table("G3_P_K27me3_rep1_goodtes2_rdCount.txt",header=TRUE,sep='\t')
G3_P_K27me3_rep1_exonRdCount<-as.vector(colSums(G3_P_K27me3_rep1_tes))

plot(1:1501, G3_P_K27me3_rep1_exonRdCount[3:1503])

G3_P_K4me3_rep2_all<-read.table("~/Desktop/CSHL_Ware/chip_seq/Sorghum_bicolor_encode/codes/rdCountPro/all_in_one/G3_P_K4me3_rep2_goodAllInOne_rdCount.txt",header=TRUE,sep='\t')

G3_P_K4me3_rep2_all_rdCount<-as.vector(colSums(G3_P_K4me3_rep2_all))

G3_P_K4me3_rep2_all_rdCount_sum<-sum(G3_P_K4me3_rep2_all_rdCount)

plot(1:4500, G3_P_K4me3_rep2_all_rdCount[5:4504]/G3_P_K4me3_rep2_all_rdCount_sum)



setwd('../exon')

G3_P_K4me3_rep2_exon<-read.table("G3_P_K4me3_rep2_goodExon_rdCount.txt",header=TRUE)

G3_P_K4me3_rep2_exonRdCount<-as.vector(colSums(G3_P_K4me3_rep2_exon))

plot(1:1500, G3_P_K4me3_rep2_exonRdCount[3:1502])
