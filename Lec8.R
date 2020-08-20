library(dplyr)
library(gapminder)
#
sum(3,2)%>%mean()%>%log()
#check head
gapminder%>%head()
#use pipe for gapminder data
gapminder %>%
  select(country,pop) %>%
  filter(country=="Bangladesh")

#Use of mutate()function to add another column
gapminder %>%
    mutate(TotalGDP = pop*gdpPercap)
#use of arrange() function to sort data from small to big value
gapminder %>%
  mutate(TotalGDP = pop*gdpPercap)%>%
  arrange(TotalGDP)%>%
  arrange(desc(TotalGDP))
