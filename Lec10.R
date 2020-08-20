library(gapminder)
head(gapminder)
#To save a data frame from package(gapminder)into PC,use 'write.table' function
write.table(gapminder,"G:/R Tutorial/my_gapminder.txt",quote=F,row.names=F,sep="|")

#read a downloaded table from PC
x=read.table("G:/R Tutorial/my_gapminder.txt",sep="|",header=T)
colnames(x)
#To load an excel file in R from PC,use gdata package
install.packages("gdata")
library(gdata)
install.packages("openxlsx")
library(openxlsx)
xl=read.xlsx("G:/R Tutorial/example_file.xlsx")
