library(tidyverse)
library(gapminder)

head(gapminder)
#facet
ggplot(gapminder,aes(continent, lifeExp))+
  geom_boxplot()
#violin (where data point is mostly located, there violin width is most)
ggplot(gapminder,aes(continent, lifeExp,color=continent))+
  geom_violin(draw_quantiles = c(.25,.5,.75))
#
ggplot(gapminder,aes(continent, lifeExp,fill=continent))+
  geom_violin(draw_quantiles = c(.25,.5,.75))
#Jitter
ggplot(gapminder,aes(continent, lifeExp))+
  geom_violin(draw_quantiles = c(.25,.5,.75))+
  geom_jitter()
#jitter
ggplot(gapminder,aes(continent, lifeExp))+
  geom_jitter()+
  geom_violin(draw_quantiles = c(.25,.5,.75))
#jitter
ggplot(gapminder,aes(continent, lifeExp))+
  geom_jitter(alpha=.2)+
  geom_violin(draw_quantiles = c(.25,.5,.75))
#If we want to rearrange the sequence of continent as our own
gapminder$continent=factor(gapminder$continent,levels=c("Oceania","Europe","America","Asia","Africa"))
gapminder$continent
#
ggplot(gapminder,aes(continent, lifeExp))+
  geom_jitter(alpha=.2)+
  geom_violin(draw_quantiles = c(.25,.5,.75))
#FORCATS