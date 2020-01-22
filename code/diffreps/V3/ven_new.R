  # library('VennDiagram')
  # library('gridExtra')
  # # get script args, print them to console
  # args <- commandArgs(TRUE); cat("Script args are:\n"); args
  # SampleID<-args[1]
  # peaks_G1<-as.numeric(args[2])
  # peaks_G3<-as.numeric(args[3])
  # peaks_overlap<-as.numeric(args[4])
  # # get filename for the plot PDF
  # plot_filename<-paste0(SampleID,"_peaks.pdf") 
  # # make a Venn object, don't print it yet
# #venn<-draw.pairwise.venn(area1= peaks_G1 +peaks_overlap,area2= peaks_G3 +peaks_overlap,cross.area=peaks_overlap,category=c('G3','G1'),fill=c('red','blue'),alpha=c(0.3,0.3),cex=c(1.5,1.5,1.5),cat.cex=c(2,2), fontface = "bold",ind=FALSE,margin = 0.05,inverted = TRUE, cat.default.pos= "outer")

# # venn<-draw.pairwise.venn(area1= peaks_G1 +peaks_overlap,area2= peaks_G3 +peaks_overlap,cross.area=peaks_overlap,category=c('G3','G1'),fill=c('red','blue'),alpha=c(0.3,0.3),cex=c(1.5,1.5,1.5),cat.cex=c(2,2), fontface = "bold",ind=FALSE,margin = 0.05,inverted = TRUE)
# venn<-draw.pairwise.venn(area1= peaks_G1 +peaks_overlap,area2= peaks_G3 +peaks_overlap,cross.area=peaks_overlap,category=c('G3','G1'),fill=c('red','blue'),alpha=c(0.3,0.3),cex=c(1.5,1.5,1.5),cat.cex=c(2,2), fontface = "bold",ind=FALSE,margin = 0.05,rotation.degree = 180)
  # # print it inside a PDF file, with a title
  # pdf(plot_filename,width = 8,height = 8)
  # title=textGrob("H3K27me3", gp=gpar(fontface="bold",cex=1.5), vjust=4)
  # grid.arrange(gTree(children=venn), top=title) #, bottom="subtitle")

  # dev.off()
# EOF


# venn.plot <- draw.pairwise.venn.new(
	# area1= 665 + 2530,area2= 1119 + 2530,cross.area= 2530,
	# # category = c('G3(Btx623)','G1(SC103)'),
	# category = c(paste('G3','\n','Btx623',sep=""), paste('G1','\n','SC103',sep="")),
	# # cat.pos = c(0, 180),
	# euler.d = TRUE,
	# sep.dist = 0.03,
	# rotation.degree = 180,
	# # inverted = TRUE,
	# fill=c('red','blue'),alpha=c(0.3,0.3),cex=c(1.5,1.5,1.5),cat.cex=c(2,2), fontface = "bold",ind=FALSE,margin = 0.05,print.mode = c('raw','percent'));

# # Writing to file
# tiff(filename = "H3K27me3.tiff", compression = "lzw");
# grid.draw(venn.plot);
# dev.off();



venn<-draw.pairwise.venn.new(area1= 665 + 2530,area2= 1119 + 2530,cross.area= 2530,
	category=c(paste('G3','\n','(Btx623)',sep=""), paste('G1','\n','(SC103)',sep="")),
	fill=c('red','blue'),alpha=c(0.3,0.3),cex=c(1.5,1.5,1.5),cat.cex=c(1,1), 
	cat.fontface="bold",
	# fontface = "bold",
	ind=FALSE,margin = 0.05,
	cat.pos= c(250, -250),
	cat.dist = rep(0.03,2),
	rotation.degree = 180, print.mode = c('raw','percent'))
  # print it inside a PDF file, with a title
SampleID<-"H3K27me3"
 plot_filename<-paste0(SampleID,"_peaks.pdf") 
 pdf(plot_filename,width = 8,height = 8)
 title=textGrob("H3K27me3", gp=gpar(fontface="bold",cex=1.5), vjust=4)
 grid.arrange(gTree(children=venn), top=title) #, bottom="subtitle")

 dev.off()


venn<-draw.pairwise.venn.new(area1= 6817 + 6551,area2= 5786 + 6551,cross.area= 6551,
	category=c(paste('G1','\n','(SC103)',sep=""), paste('G3','\n','(Btx623)',sep="") ),
	fill=c('red','blue'),alpha=c(0.3,0.3),cex=c(1.5,1.5,1.5),cat.cex=c(1,1), 
	cat.fontface="bold",
	# fontface = "bold",
	ind=FALSE,margin = 0.05,
	cat.pos= c(-30, 30),
	cat.dist = rep(-0.05,2),
	# rotation.degree = 180, 
	print.mode = c('raw','percent'))
  # print it inside a PDF file, with a title
SampleID<-"H3K4me3"
 plot_filename<-paste0(SampleID,"_peaks.pdf") 
 pdf(plot_filename,width = 8,height = 8)
 title=textGrob("H3K4me3", gp=gpar(fontface="bold",cex=1.5), vjust=4)
 grid.arrange(gTree(children=venn), top=title) #, bottom="subtitle")

 dev.off()



# venn.plot <- draw.pairwise.venn(
	# # area1 = 665+ 2530,
	# # area2 = 1119+ 2530,
	# # cross.area = 2530,
	# area1= peaks_G1 +peaks_overlap,area2= peaks_G3 +peaks_overlap,cross.area=peaks_overlap,
	# category = c("First", "Second"),
	# # cat.pos = c(0, 180),
	# euler.d = TRUE,
	# sep.dist = 0.03,
	# rotation.degree = 180,
	# # inverted = TRUE,
	# fill=c('red','blue'),alpha=c(0.3,0.3),cex=c(1.5,1.5,1.5),cat.cex=c(2,2), fontface = "bold",ind=FALSE,margin = 0.05,print.mode = "percent"
	# );

# # Writing to file
# tiff(filename = "test.tiff", compression = "lzw");
# grid.draw(venn.plot);
# dev.off();




# library('VennDiagram')
# library('gridExtra')
# # get script args, print them to console
# args <- commandArgs(TRUE); cat("Script args are:\n"); args
# SampleID<-args[1]
# peaks_G1<-as.numeric(args[2])
# peaks_G3<-as.numeric(args[3])
# peaks_overlap<-as.numeric(args[4])
# # get filename for the plot PDF
# plot_filename<-paste0(SampleID,"_peaks.pdf")
# # make a Venn object, don't print it yet
# venn<-draw.pairwise.venn(area1= peaks_G1 +peaks_overlap,area2= peaks_G3 +peaks_overlap,cross.area=peaks_overlap,category=c('G1','G3'),fill=c('red','blue'),alpha=c(0.3,0.3),cex=c(1.5,1.5,1.5),cat.cex=c(2,2), fontface = "bold",ind=FALSE,margin = 0.05, cat.default.pos= "text",cat.just = list(c(-1, -5), c(2.5, -5)))
# #venn<-draw.pairwise.venn(area1= peaks_G1 +peaks_overlap,area2= peaks_G3 +peaks_overlap,cross.area=peaks_overlap,category=c('G1','G3'),fill=c('red','blue'),alpha=c(0.3,0.3),cex=c(1.5,1.5,1.5),cat.cex=c(2,2), fontface = "bold",ind=FALSE,margin = 0.05, cat.pos = c(180, 180), inverted = TRUE)

# # print it inside a PDF file, with a title
# pdf(plot_filename,width = 8,height = 8)
# title=textGrob("H3K4me3", gp=gpar(fontface="bold",cex=1.5), vjust=4)
# grid.arrange(gTree(children=venn), top=title) #, bottom="subtitle")

# dev.off()
# EOF
