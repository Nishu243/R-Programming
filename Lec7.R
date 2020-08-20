#Package installation
install.packages("dplyr")
#load libraries
library(dplyr)
library(gapminder)
?dplyr
head(gapminder)

#extract column by select
select(gapminder,country)
select(gapminder,country,pop)
select(gapminder,country,continent,pop)
select(gapminder,-country)
select(gapminder,country,gdpPercap)
select(gapminder,-pop)
select(gapminder,-continent,-pop)
#get columns by partial matching of column names
select(gapminder,starts_with("c"))
select(gapminder,ends_with("p"))
select(gapminder,contains("co"))
#extract row by 'filter()'
temp=filter(gapminder,country=="Afghanistan")
temp=filter(gapminder,country!="Afghanistan")
temp2=filter(gapminder,country %in%c("Afghanistan","Australia"))
temp3=filter(gapminder,year==1952,lifeExp>=40)
temp4=filter(gapminder,year>=1952,lifeExp>=40)

