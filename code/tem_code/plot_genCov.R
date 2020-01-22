setwd('Desktop/ku_kinbre/SJM_data/MSG_AseI/Analysis/plot_genCov/')
cov <- read.table('C1yw01_L_i1_geoCov_header.txt', sep='\t', header=TRUE)
site_onMajor <- read.table('AseI_Pos_5major.txt', sep='\t')
dim(cov)
dim(site_onMajor)
head(cov)
head(site_onMajor)

plotCov <- function(mycov, mychr, sites) {
	plot(mycov[mycov$Chr==mychr,][[2]], mycov[mycov$Chr==mychr,][[3]], type="l", lwd=1, col="blue", ylab="", xlab="", main=mychr, cex.main=1, xaxt="n", yaxt="n")
	axis(2, las=2)
	axis(1, las=0, at=c(0, 5e+6, 1e+7, 1.5e+7, 2e+7, 2.5e+7), labels=expression(0.0, 0.5%*%10^7, 1.0%*%10^7, 1.5%*%10^7, 2.0%*%10^7, 2.5%*%10^7), cex.axis=1)
	
	points(sites[sites$V1==mychr,][[2]], y=(rep(0,length(sites[sites$V1==mychr,][[2]]))),col='red',pch=19,cex=0.5)
	
}

plotCov(cov,'2L')
points(site_onMajor[site_onMajor$V1=='2L',][[2]], y=rep(0,length(site_onMajor[site_onMajor$V1=='2L',][[2]])),col='green',pch=19,cex=0.3)

# # plotCov_chr4 <- function(mycov, mychr) {
	# plot(mycov[[2]], mycov[[3]], type="l", lwd=1, col="blue", ylab="", xlab="", main=mychr, cex.main=1, xaxt="n", yaxt="n", xlim=c(1,1500000))
	# axis(2, las=2)
	# axis(1, las=0, at=c(0, 5e+5, 1e+6, 1.5e+6), labels=expression(0.0, 0.5%*%10^6, 1.0%*%10^6, 1.5%*%10^6), cex.axis=1)
	
# }

# plot for AseI

#jpeg("NdeI_cov1.jpg", res=150) # The resolution is still low. Then, I tried to use bitmap.

bitmap("NdeI_cov300.jpg", res=300, type="jpeg", height = 13, width=10)

par(mfrow=c(6,1), mar=c(3,3,2,2), oma=c(2,2,0,0))

plotCov(NdeI_chr2L, "chr2L")
plotCov(NdeI_chr2R, "chr2R")
plotCov(NdeI_chr3L, "chr3L")
plotCov(NdeI_chr3R, "chr3R")
plotCov_chr4(NdeI_chr4, "chr4")
plotCov(NdeI_chrX, "chrX")

#title("Genome Coverage", outer=TRUE)

mtext(text="Chromosome Position", las=1, side=1, outer=TRUE, cex=0.9, font=2, line=0.5)

mtext(text="Coverage", las=0, side=2, outer=TRUE, cex=0.9, font=2, line=0.5)



dev.off()

save.image("plotCov.RData")
