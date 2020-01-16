##################################################
#         Gotta set up that WD (pc only)         #
##################################################

#setwd("C:/Users/hille/Documents/Rbootcamp_S2020/Iris-repo/")

##################################################
#                   Housekeeping                 #
##################################################

#This mixes the data and then assigns IRIS to read it in the mixed order 
#Then stores the mixed data as an object
oo <- sample(x=1:150, 150, replace=FALSE)
mix <- iris[oo,]

#Creates and stores "mix$" as seperate objects
species <- mix$Species
petalL <- mix$Petal.Length
petalW <- mix$Petal.Width
sepalL <- mix$Sepal.Length
sepalW <- mix$Sepal.Width


#This matches each species with their respective colors
species2 <- species
color2 <- rep("red", 150)
species2 == "setosa"
color2[species2 == "setosa"] <- "purple"
color2
color2[species2 == "versicolor"] <- "blue"
color2
color2[species2 == "virginica"] <- "orange"
color2

##################################################
#                2-D Scatter plots               #
##################################################

#Here are the setups for the linear regressions for each of the comparisons I have made
petalW.lm <- lm(petalW ~ petalL)
sepalL.lm <- lm(sepalL ~ petalL)
sepalW.lm <- lm(sepalW ~ petalL)

plot(petalL, petalW, cex=1.5, pch=19, col=color2, xlab = "Petal Length", ylab = "Petal Width")
abline(petalW.lm, col="black")
legend('bottomright', legend = levels(species), col = c("purple", "blue", "orange"), cex = 1, pch = 19)

plot(petalL, sepalL, col=color2, cex=1.5, pch=19, xlab = "Petal Length", ylab = "Sepal Length")
abline(sepalL.lm, col="black")
legend('bottomright', legend = levels(species), col = c("purple", "blue", "orange"), cex = 1, pch = 19)

plot(petalL, sepalW, col=color2, cex=1.5, pch=19, xlab="Petal Length", ylab="Sepal Width")
abline(sepalW.lm, col="black")
legend('topright', legend = levels(species), col = c("purple", "blue", "orange"), cex = 1, pch = 19)

##################################################
#    Generating RMakrdown on Ethan's Computer    #
##################################################

#This is needed to set up and use "RMarkdown"
require("rmarkdown")
Sys.setenv(RSTUDIO_PANDOC="C:/Program Files/RStudio/bin/pandoc")
render("markdown_ethan_test.Rmd", "html_document")


##################################################
#             Below are extra notes              #
##################################################

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
