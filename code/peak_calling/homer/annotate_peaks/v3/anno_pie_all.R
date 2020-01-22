setwd('./Desktop/CSHL_Ware/chip_seq/Sorghum_bicolor_encode/peaks/homer/anno/')
anno_cat<-read.table('G1_G3_noP_P_H3_anno.txt',sep='\t',header=TRUE)

attach(anno_cat)

library(plotly)

  
  
         
         
detach(anno_cat_input)
p_H3<-plot_ly() %>%
add_pie(anno_cat,labels=~Cat, values=~ G1_noP_K27me3_H3_commonPeakAnno, domain = list(x = c(0, 0.2), y = c(0.5, 0.9)))%>%
add_pie(anno_cat,labels=~Cat, values=~ G1_noP_K4me3_H3_commonPeakAnno, domain = list(x = c(0.25, 0.45), y = c(0.5, 0.9)))%>%
add_pie(anno_cat,labels=~Cat, values=~ G3_noP_K27me3_H3_commonPeakAnno, domain = list(x = c(0.5, 0.7), y = c(0.5, 0.9)))%>%
add_pie(anno_cat,labels=~Cat, values=~ G3_noP_K4me3_H3_commonPeakAnno, domain = list(x = c(0.75, 0.95), y = c(0.5, 0.9)))%>%


add_pie(anno_cat,labels=~Cat, values=~ G1_P_K27me3_H3_commonPeakAnno, domain = list(x = c(0, 0.2), y = c(0, 0.4)))%>%
add_pie(anno_cat,labels=~Cat, values=~ G1_P_K4me3_H3_commonPeakAnno, domain = list(x = c(0.25, 0.45), y = c(0, 0.4)))%>%
add_pie(anno_cat,labels=~Cat, values=~ G3_P_K27me3_H3_commonPeakAnno,domain = list(x = c(0.5, 0.7), y = c(0, 0.4)))%>%
add_pie(anno_cat,labels=~Cat, values=~ G3_P_K4me3_H3_commonPeakAnno,domain = list(x = c(0.75, 0.95), y = c(0, 0.4)))%>%

layout(
         xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))     
         
chart_link2 <- plotly_POST(p_H3)
         
# plot for input as background         
anno_cat_input<-read.table('G1_G3_noP_P_inp_anno.txt',sep='\t',header=TRUE)

detach(anno_cat)

attach(anno_cat_input)
     
plot_ly() %>%
add_pie(anno_cat_input,labels=~Cat, values=~ G1_noP_K27me3_inp_commonPeakAnno, domain = list(x = c(0, 0.2), y = c(0.5, 0.9)))%>%
add_pie(anno_cat_input,labels=~Cat, values=~ G1_noP_K4me3_inp_commonPeakAnno, domain = list(x = c(0.25, 0.45), y = c(0.5, 0.9)))%>%
add_pie(anno_cat_input,labels=~Cat, values=~ G3_noP_K27me3_inp_commonPeakAnno, domain = list(x = c(0.5, 0.7), y = c(0.5, 0.9)))%>%
add_pie(anno_cat_input,labels=~Cat, values=~ G3_noP_K4me3_inp_commonPeakAnno, domain = list(x = c(0.75, 0.95), y = c(0.5, 0.9)))%>%


add_pie(anno_cat_input,labels=~Cat, values=~ G1_P_K27me3_inp_commonPeakAnno, domain = list(x = c(0, 0.2), y = c(0, 0.4)))%>%
add_pie(anno_cat_input,labels=~Cat, values=~ G1_P_K4me3_inp_commonPeakAnno, domain = list(x = c(0.25, 0.45), y = c(0, 0.4)))%>%
add_pie(anno_cat_input,labels=~Cat, values=~ G3_P_K27me3_inp_commonPeakAnno,domain = list(x = c(0.5, 0.7), y = c(0, 0.4)))%>%
add_pie(anno_cat_input,labels=~Cat, values=~ G3_P_K4me3_inp_commonPeakAnno,domain = list(x = c(0.75, 0.95), y = c(0, 0.4)))%>%

layout(
         xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))     
         
# Play with how to add text

p_input<-plot_ly() %>%
add_pie(anno_cat_input,labels=~Cat, values=~ G1_noP_K27me3_inp_commonPeakAnno, domain = list(x = c(0, 0.2), y = c(0.5, 0.9)))%>%
add_pie(anno_cat_input,labels=~Cat, values=~ G1_noP_K4me3_inp_commonPeakAnno, domain = list(x = c(0.25, 0.45), y = c(0.5, 0.9)))%>%
add_pie(anno_cat_input,labels=~Cat, values=~ G3_noP_K27me3_inp_commonPeakAnno, domain = list(x = c(0.5, 0.7), y = c(0.5, 0.9)))%>%
add_pie(anno_cat_input,labels=~Cat, values=~ G3_noP_K4me3_inp_commonPeakAnno, domain = list(x = c(0.75, 0.95), y = c(0.5, 0.9)))%>%


add_pie(anno_cat_input,labels=~Cat, values=~ G1_P_K27me3_inp_commonPeakAnno, domain = list(x = c(0, 0.2), y = c(0, 0.4)))%>%
add_pie(anno_cat_input,labels=~Cat, values=~ G1_P_K4me3_inp_commonPeakAnno, domain = list(x = c(0.25, 0.45), y = c(0, 0.4)))%>%
add_pie(anno_cat_input,labels=~Cat, values=~ G3_P_K27me3_inp_commonPeakAnno,domain = list(x = c(0.5, 0.7), y = c(0, 0.4)))%>%
add_pie(anno_cat_input,labels=~Cat, values=~ G3_P_K4me3_inp_commonPeakAnno,domain = list(x = c(0.75, 0.95), y = c(0, 0.4)))%>%



layout(
         xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))   

# p %>% add_text(text=rownames(anno_cat_input), textposition="top") 

chart_link <- plotly_POST(p_input)
# No encoding supplied: defaulting to UTF-8.
# Success! Modified your plotly here -> https://plot.ly/~xiaofei_plotly/5



# p<-plot_ly() %>%
# add_pie(anno_cat_input,labels=~Cat, values=~ G1_noP_K27me3_inp_commonPeakAnno, domain = list(x = c(0, 0.25), y = c(0.5, 0.9)))%>%
# add_pie(anno_cat_input,labels=~Cat, values=~ G1_noP_K4me3_inp_commonPeakAnno, domain = list(x = c(0.25, 0.5), y = c(0.5, 0.9)))%>%
# add_pie(anno_cat_input,labels=~Cat, values=~ G3_noP_K27me3_inp_commonPeakAnno, domain = list(x = c(0.5, 0.75), y = c(0.5, 0.9)))%>%
# add_pie(anno_cat_input,labels=~Cat, values=~ G3_noP_K4me3_inp_commonPeakAnno, domain = list(x = c(0.75, 1), y = c(0.5, 0.9)))%>%


# add_pie(anno_cat_input,labels=~Cat, values=~ G1_P_K27me3_inp_commonPeakAnno, domain = list(x = c(0, 0.2), y = c(0, 0.4)))%>%
# add_pie(anno_cat_input,labels=~Cat, values=~ G1_P_K4me3_inp_commonPeakAnno, domain = list(x = c(0.25, 0.45), y = c(0, 0.4)))%>%
# add_pie(anno_cat_input,labels=~Cat, values=~ G3_P_K27me3_inp_commonPeakAnno,domain = list(x = c(0.5, 0.7), y = c(0, 0.4)))%>%
# add_pie(anno_cat_input,labels=~Cat, values=~ G3_P_K4me3_inp_commonPeakAnno,domain = list(x = c(0.75, 0.95), y = c(0, 0.4)))%>%



# layout(
         # xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         # yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))   


# play with adding trace text sucessfully

plot_ly() %>%
add_pie(anno_cat,labels=~Cat, values=~ G1_noP_K27me3_H3_commonPeakAnno, domain = list(x = c(0, 0.2), y = c(0.5, 0.9)))%>%
add_pie(anno_cat,labels=~Cat, values=~ G1_noP_K4me3_H3_commonPeakAnno, domain = list(x = c(0.25, 0.45), y = c(0.5, 0.9)))%>%
add_pie(anno_cat,labels=~Cat, values=~ G3_noP_K27me3_H3_commonPeakAnno, domain = list(x = c(0.5, 0.7), y = c(0.5, 0.9)))%>%
add_pie(anno_cat,labels=~Cat, values=~ G3_noP_K4me3_H3_commonPeakAnno, domain = list(x = c(0.75, 0.95), y = c(0.5, 0.9)))%>%


add_pie(anno_cat,labels=~Cat, values=~ G1_P_K27me3_H3_commonPeakAnno, domain = list(x = c(0, 0.2), y = c(0, 0.4)))%>%
add_pie(anno_cat,labels=~Cat, values=~ G1_P_K4me3_H3_commonPeakAnno, domain = list(x = c(0.25, 0.45), y = c(0, 0.4)))%>%
add_pie(anno_cat,labels=~Cat, values=~ G3_P_K27me3_H3_commonPeakAnno,domain = list(x = c(0.5, 0.7), y = c(0, 0.4)))%>%
add_pie(anno_cat,labels=~Cat, values=~ G3_P_K4me3_H3_commonPeakAnno,domain = list(x = c(0.75, 0.95), y = c(0, 0.4)))%>%
# layout(title = "Basic Pie Chart using Plotly")
layout(
         xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         annotations=list(
         list(x=0.105, y=0.92, text='<b>G1_noP_K27me3_H3</b>', showarrow=FALSE, xref='paper',yref='paper',yanchor='bottom',xanchor='center',font=list(family='Times New Roman',size=14)),
         list(x=0.355, y=0.92, text='<b>G1_noP_K4me3_H3</b>', showarrow=FALSE, xref='paper',yref='paper',yanchor='bottom',xanchor='center',font=list(family='Times New Roman',size=14)),
         list(x=0.605, y=0.92, text='<b>G3_noP_K27me3_H3</b>', showarrow=FALSE, xref='paper',yref='paper',yanchor='bottom',xanchor='center',font=list(family='Times New Roman',size=14)),
         list(x=0.855, y=0.92, text='<b>G3_noP_K4me3_H3</b>', showarrow=FALSE, xref='paper',yref='paper',yanchor='bottom',xanchor='center',font=list(family='Times New Roman',size=14)),
         list(x=0.105, y=0.42, text='<b>G1_P_K27me3_H3</b>', showarrow=FALSE, xref='paper',yref='paper',yanchor='bottom',xanchor='center',font=list(family='Times New Roman',size=14)),
         list(x= 0.355, y=0.42, text='<b>G1_P_K4me3_H3</b>', showarrow=FALSE, xref='paper',yref='paper',yanchor='bottom',xanchor='center',font=list(family='Times New Roman',size=14)),
         list(x= 0.605, y=0.42, text='<b>G3_P_K27me3_H3</b>', showarrow=FALSE, xref='paper',yref='paper',yanchor='bottom',xanchor='center',font=list(family='Times New Roman',size=14)),
         list(x= 0.855, y=0.42, text='<b>G3_P_K4me3_H3</b>', showarrow=FALSE, xref='paper',yref='paper',yanchor='bottom',xanchor='center',font=list(family='Times New Roman',size=14))
         ) )  
      
      
      
# input dna as background
plot_ly() %>%
add_pie(anno_cat_input,labels=~Cat, values=~ G1_noP_K27me3_inp_commonPeakAnno, domain = list(x = c(0, 0.2), y = c(0.5, 0.9)))%>%
add_pie(anno_cat_input,labels=~Cat, values=~ G1_noP_K4me3_inp_commonPeakAnno, domain = list(x = c(0.25, 0.45), y = c(0.5, 0.9)))%>%
add_pie(anno_cat_input,labels=~Cat, values=~ G3_noP_K27me3_inp_commonPeakAnno, domain = list(x = c(0.5, 0.7), y = c(0.5, 0.9)))%>%
add_pie(anno_cat_input,labels=~Cat, values=~ G3_noP_K4me3_inp_commonPeakAnno, domain = list(x = c(0.75, 0.95), y = c(0.5, 0.9)))%>%


add_pie(anno_cat_input,labels=~Cat, values=~ G1_P_K27me3_inp_commonPeakAnno, domain = list(x = c(0, 0.2), y = c(0, 0.4)))%>%
add_pie(anno_cat_input,labels=~Cat, values=~ G1_P_K4me3_inp_commonPeakAnno, domain = list(x = c(0.25, 0.45), y = c(0, 0.4)))%>%
add_pie(anno_cat_input,labels=~Cat, values=~ G3_P_K27me3_inp_commonPeakAnno,domain = list(x = c(0.5, 0.7), y = c(0, 0.4)))%>%
add_pie(anno_cat_input,labels=~Cat, values=~ G3_P_K4me3_inp_commonPeakAnno,domain = list(x = c(0.75, 0.95), y = c(0, 0.4)))%>%

layout(
         xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         annotations=list(
         list(x=0.105, y=0.92, text='<b>G1_noP_K27me3_inp</b>', showarrow=FALSE, xref='paper',yref='paper',yanchor='bottom',xanchor='center',font=list(family='Times New Roman',size=14)),
         list(x=0.355, y=0.92, text='<b>G1_noP_K4me3_inp</b>', showarrow=FALSE, xref='paper',yref='paper',yanchor='bottom',xanchor='center',font=list(family='Times New Roman',size=14)),
         list(x=0.605, y=0.92, text='<b>G3_noP_K27me3_inp</b>', showarrow=FALSE, xref='paper',yref='paper',yanchor='bottom',xanchor='center',font=list(family='Times New Roman',size=14)),
         list(x=0.855, y=0.92, text='<b>G3_noP_K4me3_inp</b>', showarrow=FALSE, xref='paper',yref='paper',yanchor='bottom',xanchor='center',font=list(family='Times New Roman',size=14)),
         list(x=0.105, y=0.42, text='<b>G1_P_K27me3_inp</b>', showarrow=FALSE, xref='paper',yref='paper',yanchor='bottom',xanchor='center',font=list(family='Times New Roman',size=14)),
         list(x= 0.355, y=0.42, text='<b>G1_P_K4me3_inp</b>', showarrow=FALSE, xref='paper',yref='paper',yanchor='bottom',xanchor='center',font=list(family='Times New Roman',size=14)),
         list(x= 0.605, y=0.42, text='<b>G3_P_K27me3_inp</b>', showarrow=FALSE, xref='paper',yref='paper',yanchor='bottom',xanchor='center',font=list(family='Times New Roman',size=14)),
         list(x= 0.855, y=0.42, text='<b>G3_P_K4me3_inp</b>', showarrow=FALSE, xref='paper',yref='paper',yanchor='bottom',xanchor='center',font=list(family='Times New Roman',size=14))
 ))
   
         
         