#print letters
letters[1:20]
LETTERS[1:20]
#print repeated elements
rep(1,3)
rep("a",20)

#create data frame
df=data.frame(col1=letters[1:20], col2=rep("a",20), col3=1:20)
#
class(df)
str(df)
dim(df)
head(df)
tail(df)
#check duplicates
duplicated(df$col1)
table(duplicated(df$col1))
duplicated(df$col2)
table(duplicated(df$col2))
!duplicated(df$col1)
table(!duplicated(df$col1))

#check unique
unique(df$col1)
unique(df$col2)

#check length
length(df$col1)
#set operation
intersect(df$col1,df$col2)
union(df$col1,df$col2)
setdiff(df$col1,df$col2)
