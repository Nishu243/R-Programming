install.packages("dendextend")
library(dendextend)

x=read.table("G:/R Tutorial/E-MTAB-2770-query-results.tsv",header=T,fill=T)
x2=x[,3:8]
cl=na.omit(x2)
hc<-hclust(as.dist(1-cor(cl[,1:ncol(cl)],method="spearman")),method="complete")
d=as.dendrogram(hc)
plot(d)

d<-d %>% 
  color_branches(k=2) %>%
  set("branches_lwd",2) %>%
  set("levels_col",c("black")) %>%
  set("leaves_pch",19) %>%
  set("leaves_cex",1) %>%
  set("leaves_col","black")

plot(d,horiz=F)

