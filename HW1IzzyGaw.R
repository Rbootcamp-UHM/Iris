iris
SepL <- iris$Sepal.Length
Sp <- iris$Species
plot(Sp, SepL)
plot(Sp, SepL, cex=2, pch=19, col="maroon")
plot(Sp, SepL, xlab= "Sepal Length", ylab= "Species",cex=2, pch=19, col="maroon")
plot(Sp, SepL, main="Plants Are Interesting", xlab= "Sepal Length", ylab= "Species",cex=2, pch=19, col="maroon")
plot(Sp, SepL, main="Plants Are Interesting", ylab= "Sepal Length", xlab= "Species",cex=2, pch=19, col="maroon")
Sp
color = rep("red", 150)
color
color[Sp=="setosa"]<-"maroon"
color
unique(Sp)
color[Sp=="versicolor"]<-"pink"
color
plot(iris$Petal.Length, SepL, main="Shades of Pink", ylab="Sepal Length", xlab="Petal Length", col=color, cex=2, pch=8)
