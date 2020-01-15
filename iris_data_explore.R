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
petalW.lm <- lm(petalL ~ petalW)

#HERE ARE SOME SCATTER PLOTS
plot(petalL, petalW, col=species)
legend('bottomright', legend = levels(iris$Species), col = 1:3, cex = 1, pch = 1)

plot(petalL, sepalL, col=species)
legend('bottomright', legend = levels(iris$Species), col = 1:3, cex = 1, pch = 1)

plot(petalL, sepalW, col=species)
legend('bottomright', legend = levels(iris$Species), col = 1:3, cex = 1, pch = 1)



