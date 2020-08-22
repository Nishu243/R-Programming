install.packages("tidyverse")
library(tidyverse)
library(gapminder)
#
head(gapminder)
ggplot(gapminder,aes(continent))+
  geom_bar()
#use of pipe in ggplot
gapminder%>%
  filter(year==1952)%>%
  ggplot(aes(continent))+
  geom_bar()
#in the above geom_bar function, we mention only continent
#in x axis, geom_bar auto calculate its frequency by default set "count", but when we will
#mention variable in y axis, we have to introduce it to geom_bar 
#by "stat=identity"
#plot population
head(gapminder)
gapminder%>%
  filter(year==1952)%>%
  ggplot(aes(continent,pop))+
  geom_bar(stat="identity")
#when we will say geom_col, no necessary to say "stat=identity"
gapminder%>%
  filter(year==1952)%>%
  ggplot(aes(continent,pop))+
  geom_col()

#stacked bar:we can generate plot(diagram) from our desired year,continent, anything

gapminder%>%
  filter(year >= 1952 & year <= 1970) %>%
  ggplot(aes(year,pop))+
  geom_bar(stat="identity",aes(fill=continent))
#we can give color to the bar according to "continent or anything"

