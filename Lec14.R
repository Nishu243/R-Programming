#install ggplot2
install.packages("ggplot2")
library(ggplot2)
#
head(mpg)
?mpg
ggplot(mpg,aes(displ,hwy,colour=class))+
  geom_point()
ggplot(mpg,aes(displ,cty,colour=trans))+
  geom_point()
#
#we can make a data frame by our own and represent the data set by ggplot
df=data.frame(col1=1:3,col2=c(1,4,2))
ggplot(df,aes(col1,col2))+
  geom_line(size=2)+
  geom_point(size=3,color="red",shape=21,stroke=3)
#we can change the parameters in geom_line and geom_point such as size
#,color,shape,stroke.



