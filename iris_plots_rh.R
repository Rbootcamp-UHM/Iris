iris			# A built-in dataframe
dim(iris)	# dimensions
names(iris)

## Accessing vectors within iris, saving as separate objects
species <- iris$Species   
petalL <- iris$Petal.Length
petalW <- iris$Petal.Width
sepalL <- iris$Sepal.Length
sepalW <- iris$Sepal.Width

# Plotting LxW of all species on 2-D graph
plot(petalW, petalL, col= rep(c("light blue", "pink", "light green"), each = 50), pch=8, xlab="petal width", ylab="petal length")
legend('bottomright', legend = levels(iris$Species), col = c("light blue", "pink", "light green"), pch=8)

plot(sepalW, sepalL, col= rep(c("light blue", "pink", "light green"), each = 50), pch=8, xlab="sepal width", ylab="sepal length")
legend('bottomright', legend = levels(iris$Species), col = c("light blue", "pink", "light green"), pch=8)