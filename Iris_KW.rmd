petalL <- iris$Petal.Length
species <- iris$Species

unique(species)
pl.setosa <- petalL[species=="setosa"]
pl.virginica <- petalL[species=="virginica"]
pl.versicolor <- petalL[species=="versicolor"]

boxplot(pl.setosa, pl.virginica, pl.versicolor, col=c("red", "green", "blue"), xlab="Species", ylab="Petal Length")
legend("bottomright", inset=.02, title="Species", c("Setosa", "Virginica", "Versicolor"), fill=c("red", "green", "blue"), horiz=TRUE)
