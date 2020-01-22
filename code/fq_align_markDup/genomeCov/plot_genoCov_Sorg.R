# setwd('Desktop/CSHL_Ware/chip_seq/Sorghum_bicolor_encode/codes/fq_align_markDup/genomeCov/')

# G3_P_K27Ac_rep2_geoCov <- read.table('G3_P_K27Ac_rep2_markDup_geoCov.txt', sep='\t', header=FALSE)
G3_P_H3_rep2_geoCov <- read.table('G3_P_H3_rep2_markDup_geoCov.txt', sep='\t', header=FALSE)
G3_P_inp_rep2_geoCov <- read.table('G3_P_inp_rep2_markDup_geoCov.txt', sep='\t', header=FALSE)
G3_P_K27me3_rep2_geoCov <- read.table('G3_P_K27me3_rep2_markDup_geoCov.txt', sep='\t', header=FALSE)

plotCov <- function(mycov, mychr) {
	plot(mycov[mycov$V1==mychr,][[2]], mycov[mycov$V1==mychr,][[3]], type="l", lwd=1, col="blue", ylab="", xlab="", main=paste('chr.', mychr), cex.main=1, xaxt="n", yaxt="n")
	axis(2, las=2)
	axis(1, las=0, at=c(0, 2e+7, 4e+7, 6e+7, 8e+7), labels=expression(0.0, 2%*%10^7, 4%*%10^7, 6%*%10^7, 8%*%10^7), cex.axis=1)
	
	# points(sites[sites$V1==mychr,][[2]], y=(rep(0,length(sites[sites$V1==mychr,][[2]]))),col='red',pch=19,cex=0.5)
	
}


# covtest<-head(G3_P_H3_rep2_geoCov,n=200000)

# plotCov(covtest,"8")



# bitmap("G3_P_K27Ac_rep2_geoCov.jpg", res=300, type="jpeg", height = 15, width=20)

# par(mfrow=c(3,4), mar=c(3,3,2,2), oma=c(2,2,0,0))

# plotCov(G3_P_K27Ac_rep2_geoCov,"1")
# plotCov(G3_P_K27Ac_rep2_geoCov,"2")
# plotCov(G3_P_K27Ac_rep2_geoCov,"3")
# plotCov(G3_P_K27Ac_rep2_geoCov,"4")
# plotCov(G3_P_K27Ac_rep2_geoCov,"5")
# plotCov(G3_P_K27Ac_rep2_geoCov,"6")
# plotCov(G3_P_K27Ac_rep2_geoCov,"7")
# plotCov(G3_P_K27Ac_rep2_geoCov,"8")
# plotCov(G3_P_K27Ac_rep2_geoCov,"9")
# plotCov(G3_P_K27Ac_rep2_geoCov,"10")

# #title("Genome Coverage", outer=TRUE)

# mtext(text="Chromosome Position", las=1, side=1, outer=TRUE, cex=0.9, font=2, line=0.5)

# mtext(text="Coverage", las=0, side=2, outer=TRUE, cex=0.9, font=2, line=0.5)

# dev.off()



bitmap("G3_P_H3_rep2_geoCov.jpg", res=300, type="jpeg", height = 15, width=20)

par(mfrow=c(3,4), mar=c(3,3,2,2), oma=c(2,2,0,0))

plotCov(G3_P_H3_rep2_geoCov,"1")
plotCov(G3_P_H3_rep2_geoCov,"2")
plotCov(G3_P_H3_rep2_geoCov,"3")
plotCov(G3_P_H3_rep2_geoCov,"4")
plotCov(G3_P_H3_rep2_geoCov,"5")
plotCov(G3_P_H3_rep2_geoCov,"6")
plotCov(G3_P_H3_rep2_geoCov,"7")
plotCov(G3_P_H3_rep2_geoCov,"8")
plotCov(G3_P_H3_rep2_geoCov,"9")
plotCov(G3_P_H3_rep2_geoCov,"10")

#title("Genome Coverage", outer=TRUE)

mtext(text="Chromosome Position", las=1, side=1, outer=TRUE, cex=0.9, font=2, line=0.5)

mtext(text="Coverage", las=0, side=2, outer=TRUE, cex=0.9, font=2, line=0.5)

dev.off()


bitmap("G3_P_inp_rep2_geoCov.jpg", res=300, type="jpeg", height = 15, width=20)

par(mfrow=c(3,4), mar=c(3,3,2,2), oma=c(2,2,0,0))

plotCov(G3_P_inp_rep2_geoCov,"1")
plotCov(G3_P_inp_rep2_geoCov,"2")
plotCov(G3_P_inp_rep2_geoCov,"3")
plotCov(G3_P_inp_rep2_geoCov,"4")
plotCov(G3_P_inp_rep2_geoCov,"5")
plotCov(G3_P_inp_rep2_geoCov,"6")
plotCov(G3_P_inp_rep2_geoCov,"7")
plotCov(G3_P_inp_rep2_geoCov,"8")
plotCov(G3_P_inp_rep2_geoCov,"9")
plotCov(G3_P_inp_rep2_geoCov,"10")

#title("Genome Coverage", outer=TRUE)

mtext(text="Chromosome Position", las=1, side=1, outer=TRUE, cex=0.9, font=2, line=0.5)

mtext(text="Coverage", las=0, side=2, outer=TRUE, cex=0.9, font=2, line=0.5)

dev.off()


bitmap("G3_P_K27me3_rep2_geoCov.jpg", res=300, type="jpeg", height = 15, width=20)

par(mfrow=c(3,4), mar=c(3,3,2,2), oma=c(2,2,0,0))

plotCov(G3_P_K27me3_rep2_geoCov,"1")
plotCov(G3_P_K27me3_rep2_geoCov,"2")
plotCov(G3_P_K27me3_rep2_geoCov,"3")
plotCov(G3_P_K27me3_rep2_geoCov,"4")
plotCov(G3_P_K27me3_rep2_geoCov,"5")
plotCov(G3_P_K27me3_rep2_geoCov,"6")
plotCov(G3_P_K27me3_rep2_geoCov,"7")
plotCov(G3_P_K27me3_rep2_geoCov,"8")
plotCov(G3_P_K27me3_rep2_geoCov,"9")
plotCov(G3_P_K27me3_rep2_geoCov,"10")

#title("Genome Coverage", outer=TRUE)

mtext(text="Chromosome Position", las=1, side=1, outer=TRUE, cex=0.9, font=2, line=0.5)

mtext(text="Coverage", las=0, side=2, outer=TRUE, cex=0.9, font=2, line=0.5)

dev.off()

save.image("plotCov.RData")

