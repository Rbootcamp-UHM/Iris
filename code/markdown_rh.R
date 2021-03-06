---
title: "R Markdown"
author: "Raine"
date: "2020-01-16"
output: html_document
---
<html>
<head>
<style>
body {background-color: powderblue;}
h1   {color: blue; font-family: verdana;}
p    {color: red; font-family: verdana;}
</style>
</head>
<body>
<p>
I will be going through how I used the data frame "Iris" to create 2-D scatter plots.
<p>
This is iris, a built-in data frame.

```{r}
iris			# A built-in data frame
```

The data frame iris has 150 rows and 5 columns.

```{r}
dim(iris)	# dimensions
```

These are the names of each column.

```{r}
names(iris)
```

Here, I am creating easy to remember variables for each vector, so I do not have to pull the vectors every time.

```{r}
## Accessing vectors within iris, saving as separate objects
species <- iris$Species
petalL <- iris$Petal.Length
petalW <- iris$Petal.Width
sepalL <- iris$Sepal.Length
sepalW <- iris$Sepal.Width
```

This is the r code for my 2-D scatter plots.

```{r}
# Scatter plots
color = rep("light green", 150)
color[species == "setosa"] <- "light blue"
color[species == "versicolor"] <- "pink"

plot(petalL, petalW, col=color, pch=8, main = "Comparing Petal Length and Width of Iris Species", xlab="petal length", ylab="petal width")
legend('bottomright', legend = levels(iris$Species), col = c("light blue", "pink", "light green"), pch=8)

plot(sepalL, sepalW, col=color, pch=8, main = "Comparing Sepal Length and Width of Iris Species", xlab="sepal length", ylab="sepal width")
legend('bottomright', legend = levels(iris$Species), col = c("light blue", "pink", "light green"), pch=8)
```

These are my plots using the polygon function to outline each species.

```{r}
color = rep("light green", 150)
color[species == "setosa"] <- "light blue"
color[species == "versicolor"] <- "pink"

plot(petalL, petalW, col=color, pch=8, main = "Comparing Petal Length and Width of Iris Species", xlab="petal length", ylab="petal width")
legend('bottomright', legend = levels(iris$Species), col = c("light blue", "pink", "light green"), pch=8)

# Petal polygons
ii.set <- chull(petalL[1:50], petalW[1:50])
polygon(petalL[ii.set], petalW[ii.set])

ii.ver <- chull(petalL[species == "versicolor"], petalW[species == "versicolor"])
polygon(petalL[species == "versicolor"][ii.ver], petalW[species == "versicolor"][ii.ver])

ii.vir <- chull(petalL[species == "virginica"], petalW[species == "virginica"])
polygon(petalL[species == "virginica"][ii.vir], petalW[species == "virginica"][ii.vir])

# Sepal polygons
plot(sepalL, sepalW, col=color, pch=8, main = "Comparing Sepal Length and Width of Iris Species", xlab="sepal length", ylab="sepal width")
legend('bottomright', legend = levels(iris$Species), col = c("light blue", "pink", "light green"), pch=8)

vv.set <- chull(sepalL[1:50], sepalW[1:50])
polygon(sepalL[vv.set], sepalW[vv.set])

vv.ver <- chull(sepalL[species == "versicolor"], sepalW[species == "versicolor"])
polygon(sepalL[species == "versicolor"][vv.ver], sepalW[species == "versicolor"][vv.ver])

vv.vir <- chull(sepalL[species == "virginica"], sepalW[species == "virginica"])
polygon(sepalL[species == "virginica"][vv.vir], sepalW[species == "virginica"][vv.vir])
```
</body>

# require(rmarkdown)
# render("markdown_rh.Rmd", output_format="html_document")
