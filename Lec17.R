library(tidyverse)
library(gapminder)
#gdpPercap showing for every continent, all continent showing by one plot
ggplot(gapminder,aes(lifeExp,gdpPercap))+
  geom_point()
#facet will divide plot according to continent
ggplot(gapminder,aes(lifeExp,gdpPercap))+
  geom_point()+
  facet_grid(.~continent)
#
ggplot(gapminder,aes(lifeExp,gdpPercap))+
  geom_point()+
  facet_grid(continent~.)
#facet_wrap (homework)
#coordinate flip
ggplot(gapminder,aes(continent,lifeExp))+
   geom_boxplot()
#y-axis becomes x-axis by coordinate flip
ggplot(gapminder,aes(continent,lifeExp))+
  geom_boxplot()+
  coord_flip()
#change of theme,change of continent color even the default background ash color can change
ggplot(gapminder,aes(continent,lifeExp,fill=continent))+
  geom_boxplot()
#
ggplot(gapminder,aes(continent,lifeExp,fill=continent))+
geom_boxplot()+
  theme_bw()
  
#
ggplot(gapminder,aes(continent,lifeExp,fill=continent))+
  geom_boxplot()+
  theme_dark()
#we can also change the name of continent,rotate the name by theme
