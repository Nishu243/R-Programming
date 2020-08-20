?plot
head(cars)
plot(cars)
plot(cars$dist,cars$speed)
plot(cars$dist,cars$speed,col="green",main="My first plot")
plot(cars$dist,cars$speed,col="blue",main="My first plot",xlab="distance",ylab="car speed")

#types of plot
plot(cars$speed,cars$dist)
plot(cars$speed,cars$dist,"b")
plot(cars$speed,cars$dist,"h")

