setwd('./Desktop/CSHL_Ware/chip_seq/Sorghum_bicolor_encode/TSS/filted_bam')

G3_P_H3_rep1<-read.table("G3_P_H3_rep1_goodtss2_rdCount.txt",header=TRUE)
G3_P_H3_rep2<-read.table("G3_P_H3_rep2_goodtss2_rdCount.txt",header=TRUE)
G3_P_inp_rep1<-read.table("G3_P_inp_rep1_goodtss2_rdCount.txt",header=TRUE)
G3_P_inp_rep2<-read.table("G3_P_inp_rep2_goodtss2_rdCount.txt",header=TRUE)
G3_P_K4me3_rep1<-read.table("G3_P_K4me3_rep1_goodtss2_rdCount.txt",header=TRUE)
G3_P_K4me3_rep2<-read.table("G3_P_K4me3_rep2_goodtss2_rdCount.txt",header=TRUE)
G3_P_K27me3_rep1<-read.table("G3_P_K27me3_rep1_goodtss2_rdCount.txt",header=TRUE)
G3_P_K27me3_rep2<-read.table("G3_P_K27me3_rep2_goodtss2_rdCount.txt",header=TRUE)

G3_P_H3_rep1_tssRdCount<-as.vector(colSums(G3_P_H3_rep1))
G3_P_H3_rep2_tssRdCount<-as.vector(colSums(G3_P_H3_rep2))
G3_P_inp_rep1_tssRdCount<-as.vector(colSums(G3_P_inp_rep1))
G3_P_inp_rep2_tssRdCount<-as.vector(colSums(G3_P_inp_rep2))
G3_P_K4me3_rep1_tssRdCount<-as.vector(colSums(G3_P_K4me3_rep1))
G3_P_K4me3_rep2_tssRdCount<-as.vector(colSums(G3_P_K4me3_rep2))
G3_P_K27me3_rep1_tssRdCount<-as.vector(colSums(G3_P_K27me3_rep1))
G3_P_K27me3_rep2_tssRdCount<-as.vector(colSums(G3_P_K27me3_rep2))

G3_P_K4me3_rep1_total=14937889
G3_P_K4me3_rep2_total=37007730
G3_P_H3_rep1_total=28300446
G3_P_H3_rep2_total=36117767
G3_P_inp_rep1_total=35628045
G3_P_inp_rep2_total=38480733
G3_P_K27me3_rep1_total=26190108
G3_P_K27me3_rep2_total=36464104

bitmap("tss.jpg", res=300, type="jpeg", height = 15, width=20)
par(mfrow=c(2,2), mar=c(5.1,4.1,4.1,2.1), oma=c(2,2,0,0))

plot(-1500:1500, G3_P_K4me3_rep1_tssRdCount[3:3003]/G3_P_K4me3_rep1_total, xlab="Distance to TSS",ylab="Mean Scaled Read Count Rep1",col='red',type="l", lwd =2.5)
points(-1500:1500, G3_P_H3_rep1_tssRdCount[3:3003]/G3_P_H3_rep1_total,col='purple',type="l", lwd =2.5)
points(-1500:1500, G3_P_inp_rep1_tssRdCount[3:3003]/G3_P_inp_rep1_total,col='blue',type="l", lwd =2.5)
legend(x=900,y=max(G3_P_K4me3_rep1_tssRdCount[3:3003]/G3_P_K4me3_rep1_total),pch=15,col=c("blue","purple","red"),c("Input","H3","H3K4me3"),bty="n",xpd=T)


plot(-1500:1500, G3_P_K4me3_rep2_tssRdCount[3:3003]/G3_P_K4me3_rep2_total, xlab="Distance to TSS",ylab="Mean Scaled Read Count Rep2",col='red',type="l", lwd =2.5)
points(-1500:1500, G3_P_H3_rep2_tssRdCount[3:3003]/G3_P_H3_rep2_total,col='purple',type="l", lwd =2.5)
points(-1500:1500, G3_P_inp_rep2_tssRdCount[3:3003]/G3_P_inp_rep2_total,col='blue',type="l", lwd =2.5)
legend(x=900,y=max(G3_P_K4me3_rep2_tssRdCount[3:3003]/G3_P_K4me3_rep2_total),pch=15,col=c("blue","purple","red"),c("Input","H3","H3K4me3"),bty="n",xpd=T)



plot(-1500:1500, G3_P_K27me3_rep1_tssRdCount[3:3003]/G3_P_K27me3_rep1_total, xlab="Distance to TSS",ylab="Mean Scaled Read Count Rep1",col='green3',type="l", lwd =2.5)
points(-1500:1500, G3_P_H3_rep1_tssRdCount[3:3003]/G3_P_H3_rep1_total,col='purple',type="l", lwd =2.5)
points(-1500:1500, G3_P_inp_rep1_tssRdCount[3:3003]/G3_P_inp_rep1_total,col='blue',type="l", lwd =2.5)
legend(x=900,y=max(G3_P_K27me3_rep1_tssRdCount[3:3003]/G3_P_K27me3_rep1_total),pch=15,col=c("blue","purple","green3"),c("Input","H3","H3K27me3"),bty="n",xpd=T)



plot(-1500:1500, G3_P_K27me3_rep2_tssRdCount[3:3003]/G3_P_K27me3_rep2_total, xlab="Distance to TSS",ylab="Mean Scaled Read Count Rep2",col='green3',type="l", lwd =2.5)
points(-1500:1500, G3_P_H3_rep2_tssRdCount[3:3003]/G3_P_H3_rep2_total,col='purple',type="l", lwd =2.5)
points(-1500:1500, G3_P_inp_rep2_tssRdCount[3:3003]/G3_P_inp_rep2_total,col='blue',type="l", lwd =2.5)
legend(x=900,y=max(G3_P_K27me3_rep2_tssRdCount[3:3003]/G3_P_K27me3_rep2_total),pch=15,col=c("blue","purple","green3"),c("Input","H3","H3K27me3"),bty="n",xpd=T)

dev.off()



for (i in 1:5){
	
	subset=G3_P_K27me3_rep1_goodtss2_rdCount[(3185*(i-1)+1):(3185*i),]
	print(3185*(i-1)+1)
	print(3185*i)
	colSum=colSums(subset)
	# print(as.vector(colSum))
	assign(paste("d",as.character(i),sep=""),as.vector(colSum))

}

# assign variable
for (i in 1:5){
	assign(paste("d",as.character(i),sep=""),10*i)
	print(d1)

}
	
	
save.image("tssPlot.RData")