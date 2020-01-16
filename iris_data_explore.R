##################################################
# 				Gotta set up that WD			 #
##################################################

setwd("C:/Users/hille/Documents/Rbootcamp_S2020/Iris-repo/")

##################################################
# 					Housekeeping				 #
##################################################

iris			# A built-in dataframe
dim(iris)	# dimensions
names(iris)

## Accessing vectors within iris, saving as separate objects
species <- iris$Species   
petalL <- iris$Petal.Length
petalW <- iris$Petal.Width
sepalL <- iris$Sepal.Length
sepalW <- iris$Sepal.Width


##################################################
# 				2-D Scatter plots				 #
##################################################

#Regression lines
petalW.lm <- lm(petalW ~ petalL)
sepalL.lm <- lm(sepalL ~ petalL)
sepalW.lm <- lm(sepalW ~ petalL)

#HERE ARE SOME SCATTER PLOTS, with the line of best fit
plot(petalL, petalW, col=rep(c("red", "purple", "gold"), each=50), cex=1.5, pch=19, xlab="petal length", ylab="petal width")
abline(petalW.lm, col="black")
legend('bottomright', legend = levels(iris$Species), col = c("red", "purple", "gold"), cex = 1, pch = 19)

plot(petalL, sepalL, col=rep(c("red", "purple", "gold"), each=50), cex=1.5, pch=19, xlab="petal length", ylab="sepal length")
abline(sepalL.lm, col="black")
legend('bottomright', legend = levels(iris$Species), col = c("red", "purple", "gold"), cex = 1, pch = 19)

plot(petalL, sepalW, col=rep(c("red", "purple", "gold"), each=50), cex=1.5, pch=19, xlab="petal length", ylab="sepal width")
abline(sepalW.lm, col="black")
legend('bottomright', legend = levels(iris$Species), col = c("red", "purple", "gold"), cex = 1, pch = 19)


##################################################
# 				1-D Scatter plot(s)				 #
##################################################

plot(petalL, col=rep(c("red", "purple", "gold"), each=50), cex=1.5, pch=19, ylab = "Petal Length", xlab = "individual #")
legend('bottomright', legend = levels(iris$Species), col = c("red", "purple", "gold"), cex = 1, pch = 19)
#abline(lm(petalL), col="black")

plot(petalW)




##################################################
# 				Below are extra notes			 #
##################################################


#plot(petalL, petalW, col=species, cex=2, pch=19, xlab="petal length", ylab="petal width")
#legend('bottomright', legend = levels(iris$Species), col = 1:3, cex = 1, pch = 1)

#rep(c("red", "green", "blue"), each=50)

git add iris_data_explore.R
git commit -m "Add script to make bivariate plots"
git push origin ethans-branch
