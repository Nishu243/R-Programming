#install pheatmap
install.packages("pheatmap")
library(pheatmap)
#make a data frame or matrix
head(mtcars)
df=scale(mtcars)
pheatmap(df)
pheatmap(df,
         border_color="red",
         cellwidth=15,
         cluster_rows=T,
         cutree_rows=2,
         show_rownameS=T,
         main="Correlation between cars",
         fontsize=8,
         display_numbers=T)
#Importance of scale function
#If we don't use scale function and only use pheatmap(mtcars),
then the plot will show the correlation for only very smaall
value or large value (outlier value), that does not make sense 
of using pheatmap.
#pheatmap has an own scale function
pheatmap(mtcars)
pheatmap(mtcars,scale="column")
#scaling is also very important for gene expression analusis
#cz some gene's expression are high and some are low.
#will learn how to annotate the plot
