iris			# A built-in dataframe
dim(iris)	# dimensions
names(iris)

## Accessing vectors within iris, saving as separate objects
species <- iris$Species   
petalL <- iris$Petal.Length
petalW <- iris$Petal.Width
sepalL <- iris$Sepal.Length
sepalW <- iris$Sepal.Width

#Regression lines?
petalW.lm <- lm(petalW ~ petalL)

#HERE ARE SOME SCATTER PLOTS, the first one has a line of best fit
plot(petalL, petalW, col=rep(c("red", "purple", "gold"), each=50), cex=1.5, pch=19, xlab="petal length", ylab="petal width")
abline(petalW.lm, col="black")
legend('bottomright', legend = levels(iris$Species), col = c("red", "purple", "gold"), cex = 1, pch = 19)

plot(petalL, petalW, col=species, cex=2, pch=19, xlab="petal length", ylab="petal width")
legend('bottomright', legend = levels(iris$Species), col = 1:3, cex = 1, pch = 1)

plot(petalL, sepalL, col=species)
legend('bottomright', legend = levels(iris$Species), col = 1:3, cex = 1, pch = 1)

plot(petalL, sepalW, col=species)
legend('bottomright', legend = levels(iris$Species), col = 1:3, cex = 1, pch = 1)




#plot(petalL, petalW, col=species, cex=2, pch=19, xlab="petal length", ylab="petal width")
#legend('bottomright', legend = levels(iris$Species), col = 1:3, cex = 1, pch = 1)

#rep(c("red", "green", "blue"), each=50)
