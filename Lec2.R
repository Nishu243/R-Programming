###data frame is most used data structure. From data frame function, we can construct a table by using column and row from a given set of data. we can determine the dimention of that table(number of rows and 
##number of columns), we can calculate mean, median, quartile value of tabular dataset, can print desired column or rows, can know the type of that column, can construct a new data
## frame by taking desired number of row or columns from first dataframe. Data frame is necessary for different R package and R function.


#create a data frame
df=data.frame(col1=1:4, col2=4:7, col3=7:10)
#explore data frame
#print column names
colnames(df)
#print row names
rownames(df)
#check dimensions
dim(df)
#check structure
str(df)
#summary of data frame
summary(df)
#create new data frame
df2=df[,2:3]
df3=df[1:3,]
#get one column
df[,1]
df$col1
