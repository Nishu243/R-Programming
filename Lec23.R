install.packages("dendextend")
library(dendextend)
#
setwd
#
read.table("Leukemia_Carcinoma.tsv",header=T)
#table e kono data/gene er expression missing thakle bole dite hobe fill=T,na hole error dekhabe
x=read.table("Leukemia_Carcinoma.tsv",header=T,FILL=T)
#dendogram toirir somoy amra sudhu gene er expression value gulo nibo,
#gene name and ID bad diye dibo, tai arekta R er object (x2) khulbo
x2=x[,3:8]
#missing value gulo list/table e "NA" hisebe dekhay, 'NA' gula
#bad deyar jonno arekta object khulte hobe

cl=na.omit(x2)
#R er nijosso hclust function use kora jay,bt gene expression er khetre 
#nimmer function ti beshi effective, pearson asa kore gene expression khubi homogenous
#bt gene expression very dynamic, kichu expression beshi,kichu kom
#spearman rank based and perfect for gene expression analysis
#correlation take distance hisebe dekhano hocce
hc<-hclust(as.dist(1-cor(cl[,1:ncol(cl)],method="spearman")),method="complete")
d=as.dendrogram(hc)
plot(d)
#microarray data r khetre pearson correlation method use kora jay
#we can color the plot according to cluster formation

d<-d %>% color_branches(k=2) %>%
  set("branches_lwd",2) %>%
  set("levels_col",c("black")) %>%
  set("leaves_pch",19) %>%
  set("leaves_cex",1) %>%
  set("leaves_col","black")
plot(d,horiz=F)

