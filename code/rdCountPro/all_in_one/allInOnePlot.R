

setwd("~/Desktop/CSHL_Ware/chip_seq/Sorghum_bicolor_encode/codes/rdCountPro/all_in_one")
G3_P_K27me3_rep2<-read.table("G3_P_K27me3_rep2_goodAllInOne_rdCount.txt",header=TRUE)

G3_P_K27me3_rep2_allInOne_RdC <- as.vector(colSums(G3_P_K27me3_rep2))


plot(1:4500, G3_P_K27me3_rep2_allInOne_RdC[5:4504], xlab="X",ylab="Read Count",col='red',type="l", lwd =2.5)