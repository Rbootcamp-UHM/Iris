# setwd("C:/Users/frase/Documents/Rclass")

Slength <- iris$Sepal.Length	#rename the column headers
Swidth <- iris$Sepal.Width
Plength <- iris$Petal.Length
Pwidth <- iris$Petal.Width
Species <- iris$Species

plot(Slength, Plength, pch=19, col=iris$Species)
lm(Plength~Slength) #save regression line (y~x)
lengths.lm <- lm(Plength~Slength)
abline(lengths.lm, col="blue")
legend("bottomright", legend=levels(iris$Species), col= c(1,2,3), pch=16)

plot(Slength, Swidth, pch=19, col=iris$Species)
lm(Swidth~Slength) #save regression line (y~x)
Sepal.lm <- lm(Swidth~Slength)
abline(Sepal.lm, col="blue")
legend("bottomright", legend=levels(iris$Species), col= c(1,2,3), pch=16)

plot(Swidth, Plength, pch=19, col=iris$Species)
lm(Plength~Swidth) #save regression line (y~x)
PlenSwid.lm <- lm(Plength~Swidth)
abline(PlenSwid.lm, col="blue")
legend("bottomright", legend=levels(iris$Species), col= c(1,2,3), pch=16)

plot(Pwidth, Plength, pch=19, col=iris$Species)
lm(Plength~Pwidth) #save regression line (y~x)
Petal.lm <- lm(Plength~Pwidth)
abline(Petal.lm, col="blue")
legend("bottomright", legend=levels(iris$Species), col= c(1,2,3), pch=16)

plot(Slength, Pwidth, pch=19, col=iris$Species)
lm(Pwidth~Slength) #save regression line (y~x)
SlenPwid.lm <- lm(Pwidth~Slength)
abline(SlenPwid.lm, col="blue")
legend("bottomright", legend=levels(iris$Species), col= c(1,2,3), pch=16)

plot(Swidth, Pwidth, pch=19, col=iris$Species)
lm(Pwidth~Swidth) #save regression line (y~x)
widths.lm <- lm(Pwidth~Swidth)
abline(widths.lm, col="blue")
legend("bottomright", legend=levels(iris$Species), col= c(1,2,3), pch=16)


d
