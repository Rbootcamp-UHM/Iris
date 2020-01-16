#This mixes the data and then assigns IRIS to read it in the mixed order
oo <- sample(x=1:150, 150, replace=FALSE)
mix <- iris[oo,]

#This works with the dataset in order
species <- iris$Species
color <- rep("red", 150)
species == "setosa"
color[species == "setosa"] <- "purple"
color
color[species == "versicolor"] <- "blue"
color
color[species == "virginica"] <- "green"
color

#This works for the mixed dataset
species2 <- mix$Species
color2 <- rep("red", 150)
species2 == "setosa"
color2[species2 == "setosa"] <- "purple"
color2
color2[species2 == "versicolor"] <- "blue"
color2
color2[species2 == "virginica"] <- "green"
color2

plot(mix$Petal.Length, mix$Petal.Width, cex=1, pch=19, col=color2, xlab = "Petal Length", ylab = "Petal Width")
legend('bottomright', legend = levels(iris$Species), col = c("purple", "blue", "green"), cex = 1, pch = 19)
