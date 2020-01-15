iris			# A built-in dataframe
dim(iris)	# dimensions
names(iris)

## Accessing vectors within iris, saving as separate objects
species <- iris$Species   
petalL <- iris$Petal.Length
petalW <- iris$Petal.Width

## some plot examples - try them

# 1-D scatter plots
plot(petalL)
plot(petalW)

# 2-D scatter plots
plot(petalL, petalW)
polygon(petalL, petalW)
plot(species,petalL)

# boxplots
boxplot(petalL)  ## Look at the help page and try some optional arguments like below
boxplot(petalL, col="red")

# histogram, 1-D
hist(petalL)  ## histogram
density(petalL) # probability density
lines(density(petalL), col="blue")  # add to plot


### just Setosa
unique(species)
pl.setosa <- petalL[species=="setosa"]

plot(pl.setosa)

#########################################################
### Are these species different in petal length or width or sepal length or width?  *** SHOW US ***
# - Write a clean script using any method you want to explore
# - You will want to use indexing methods and subsetting to grab the data you want out of the iris dataframe.
# - Change the name of iris_stub.R to iris_descriptiveword_initials.R, push back to repository




#########################################################
### Fancier stuff (just FYI, dog and pony show)
#########################################################
### draw convex polygon around the points using chull() and polygon() functions
### polygon draws a polygon around all the points
### chull computes the minimum convex polygon around a cloud

plot(petalL, petalW)
pts <- chull(petalL, petalW)
polygon(cbind(petalL, petalW)[pts,], col="blue")

  ## big yellow points
plot(petalL, petalW, pch=19, col="yellow", cex=2)

  ## function to make points transparent
make_transparent <- function(mycolor="yellow", frac=.3){ rgb(t(col2rgb(mycolor)/255), alpha=frac) }
 
plot(petalL, petalW, pch=19, col=make_transparent("yellow",.3), cex=2)
