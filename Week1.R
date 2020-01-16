# setwd("C:/Users/frase/Documents/Rclass") 

speed <- cars$speed    #save as a vector
dist <-cars$dist

plot(speed, dist)	#plot x,y
lm(dist~speed)		#save regression line
speed.lm <- lm(dist~speed) 

abline(speed.lm, col="blue") #plot regression line

write.csv(cars, "cars.csv") #write new csv file
cars <- read.csv("cars.csv") #save as vector

matrix(letters[1:10], nrow=2)
matrix(letters, nrow=5)

data.frame(name= letters[1:3], id=1:3, colors=c("red", "blue", "green"))
#write new data frame with 3 columns: name, ID, colors
data.frame(name= letters[1:3], colors=c("red", "blue", "green"))
#excludes id column

data.frame( letters[1:3], 1:3, c("red", "blue", "green"))
dat <- data.frame( letters[1:3], 1:3, c("red", "blue", "green"))
#non-defined column headers
names(dat) <- c("name", "id", "colors") #rename headers

dat <- data.frame(name= letters[1:3], id=1:3, colors=c("red", "blue", "green"))

rbind(dat, dat) #stitch together by rows
cbind(dat, dat) #stitch together by columns

1:10*5 #number by 5s
letters[5]	#indexing
letters[1:5*5]	#index by 5s

iris
plot(iris)
plot(iris$Sepal.Length)
plot(iris$Sepal.Length, iris$Species)

x <- 1:6
x <- c(1,2,3,4,5,6)
1:6
matrix(x, nrow=2)
matrix(x, nrow=2, byrow=T) #switch matrix by row
mat <- matrix(x, nrow=2, byrow=T)
dat <- data.frame(mat)
names(dat) <- c("height", "weight", "x")
class(dat$height)
class(dat)
class(dat["height"])

dat$height[1]
dat[1:2]
dat$height[c(1,2)]



# dat[, "species"] #species column- indexing
# dat["species"] #same
# dat[2, "size"] #row 2, column 2

# dat$species #species column
# dat$mass #mass column




