#setwd("C:/Users/frase/Documents/Rclass/ClassCodeData")

Slength <- iris$Sepal.Length
Swidth <- iris$Sepal.Width
Plength <- iris$Petal.Length
Pwidth <- iris$Petal.Width
Species <- iris$Species

plot(Slength, Plength, pch=10, col=iris$Species) #plot lengths
lm(Plength~Slength) #save regression line (y~x)
lengths.lm <- lm(Plength~Slength)
abline(lengths.lm, col="blue")
title(main= "Sepal and Petal Lengths")
legend("bottomright", legend=levels(iris$Species), col= c(1,2,3), pch=10)

plot(Swidth, Pwidth, pch=10, col=iris$Species) #plot widths
lm(Pwidth~Swidth) #save regression line (y~x)
widths.lm <- lm(Pwidth~Swidth)
abline(widths.lm, col="blue")
title(main= "Sepal and Petal Widths")
legend("right", legend=levels(iris$Species), col= c(1,2,3), pch=10)
