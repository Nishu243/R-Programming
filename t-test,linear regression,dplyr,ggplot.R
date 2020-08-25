# https://www.youtube.com/watch?v=ANMuuq502rE
library(gapminder)
data("gapminder")
summary(gapminder)
x=mean(gapminder$gdpPercap)

#if you feel lazy to call a dataframe everytime, you can use
attach(gapminder)
median(pop)
hist(lifeExp)
hist(pop)
hist(log(pop))
#continent wise life expectency show
boxplot(lifeExp~continent)
plot(lifeExp~gdpPercap)
#if plot shows values as 0e+00,4e+04,etc type, use log function
plot(lifeExp~log(gdpPercap))
#dplyr for dataset manipulation
#select use to select column
#filter use to select the subset of rows
library(dplyr)
gapminder%>%
  select(country,lifeExp)%>%
  filter(country == "South Africa" |
         country == "Ireland") %>%
  group_by(country) %>%
  summarise(Average_life = mean(lifeExp))
df1=gapminder%>%
  select(country,lifeExp)%>%
  filter(country == "South Africa" |
           country == "Ireland")
#t-test of df1 to compare the life expectancy of two country  
t.test(data=df1,lifeExp~country)
# if the P-Value is less than 0.05, we reject the null hypothesis 
#in case of test with 95% confidence or 5% significance.so,we
#can reject the null hypothesis.Actually,researcher wants to reject 
#the null-hypothesis.
#null hypothesis declare that true difference in means is equal to zero 
#regardless of experimental error or samples
#alternative hypothesis: true difference in means is not equal to 0
#ggplot
#aes=aesthetic tools define how our data will represent in ggplot
#what will be x axis and what will be y axis
#geom_point(alpha=0.3 represents size=pop,bigger dots represent more
#populus country)
library(ggplot2)
gapminder%>%
  filter(gdpPercap<50000)%>%
  ggplot(aes(x=gdpPercap,y=lifeExp,col=continent,size=pop))+
  geom_point(alpha=0.3)

gapminder%>%
  filter(gdpPercap<50000)%>%
  ggplot(aes(x=log(gdpPercap),y=lifeExp,col=continent,size=pop))+
  geom_point(alpha=0.3)

gapminder%>%
  filter(gdpPercap<50000)%>%
  ggplot(aes(x=log(gdpPercap),y=lifeExp,col=continent,size=pop))+
  geom_point(alpha=0.3)+
  geom_smooth()
#
gapminder%>%
  filter(gdpPercap<50000)%>%
  ggplot(aes(x=log(gdpPercap),y=lifeExp,col=continent,size=pop))+
  geom_point(alpha=0.3)+
  geom_smooth(method=lm)+
  facet_wrap(~continent)
#
gapminder%>%
  filter(gdpPercap<50000)%>%
  ggplot(aes(x=log(gdpPercap),y=lifeExp,col=year,size=pop))+
  geom_point(alpha=0.3)+
  geom_smooth(method=lm)+
  facet_wrap(~continent)
#linear regression
#represent dot in a linear basis,intersect y axis at some point
lm(lifeExp~gdpPercap+pop)
summary(lm(lifeExp~gdpPercap+pop))

