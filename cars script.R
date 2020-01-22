#cars <- read.csv("cars.csv") #Day 1 R activity
cars #built in dataset

speed <-cars$speed #save as a vector

dist <-cars$dist 

plot(speed, dist) #plot x, y 

speed.lm <-(dist~speed) #save regression line

abline(speed.lm, col="red") #plot regression line

write.csv(cars, "cars.csv")#save data to csv file