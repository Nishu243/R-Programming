#remove all variables stored previously
rm(list=ls())
install.packages("Hmisc")
library(Hmisc)

data<-read.csv("G:/R Tutorial/COVID_R/datasets_494724_1437604_COVID19_line_list_data.csv")
describe(data)
#clean death column
data$death_dummy<-as.integer(data$death !=0)
#death rate
sum(data$death_dummy)/nrow(data)
#Age
#claim:people who died are older
dead=subset(data,death_dummy==1)
alive=subset(data,death_dummy==0)
mean(dead$age,na.rm=T)
mean(alive$age,na.rm=T)
#is this statistically significant
t.test(alive$age,dead$age,alternative="two.sided",conf.level=0.99)
#Normally, if p-value <0.05, we reject null hypothesis
#here,p-value ~0, so we reject null hypothesis and
#conclude that this statistically significant
#Gender
#claim:gender has no effect
men=subset(data,gender=="male")
women=subset(data,gender=="female")
mean(men$death_dummy,na.rm=T) #8.5%!
mean(women$death_dummy,na.rm=T) #3.7%
#is this statistically significant?
t.test(men$death_dummy,women$death_dummy,alternative="two.sided",conf.level=0.99)
#99% confidence:men have from 0.8% to 8.8% higher chance of dying
#p-value=0.002<0.05, so this is statistically significant
