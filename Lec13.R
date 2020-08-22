#ggplot2
#command example
#goals of statistical graphics:
#1.To facilitate comparison, 2. To identify trend
#lattice and ggplot2 achieve these goals with less actions 
#ggplot(dataframe,aes(column x-axis,column y-axis))+what kind of plot()
ggplot(mpg,aes(displ,hwy,colour=class))+geom_point()
#we need to reshape data
#we need to convert a messy data to tidy data
#we should not save image by using save as,it will reduce image quality
#we should use R own's program to get high resolution image