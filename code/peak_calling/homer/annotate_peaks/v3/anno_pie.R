setwd('./Desktop/CSHL_Ware/chip_seq/Sorghum_bicolor_encode/peaks/homer/anno/')
anno_cat<-read.table('G3_P_anno.txt',sep='\t',header=TRUE)

attach(anno_cat)
library(plotly)


plot_ly() %>%
add_pie(anno_cat,labels=~Cat, values=~ G3_P_K4me3_H3_commonPeakAnno,domain = list(x = c(0, 0.4), y = c(0.4, 1)))%>%
add_pie(anno_cat,labels=~Cat, values=~ G3_P_K27me3_H3_commonPeakAnno,domain = list(x = c(0.5, 1), y = c(0.4, 1)))%>%

layout(
         xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

