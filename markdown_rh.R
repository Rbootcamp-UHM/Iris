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

Here, I am creating easy to remember variables for each vector, so I don't have to pull the vectors every time.

```{r}
## Accessing vectors within iris, saving as separate objects
species <- iris$Species
petalL <- iris$Petal.Length
petalW <- iris$Petal.Width
sepalL <- iris$Sepal.Length
sepalW <- iris$Sepal.Width
```

This is the r code for my scatter plot 2-D graphs at the bottom.

```{r}
# Polygon scatter plot
color = rep("light green", 150)
color[species == "setosa"] <- "light blue"
color[species == "versicolor"] <- "pink"

plot(petalL, petalW, col=color, pch=8, main = "Comparing Petal Length and Width of Iris Species", xlab="petal length", ylab="petal width")
legend('bottomright', legend = levels(iris$Species), col = c("light blue", "pink", "light green"), pch=8)
polygon(petalL, petalW)

plot(sepalL, sepalW, col=color, pch=8, main = "Comparing Sepal Length and Width of Iris Species", xlab="sepal length", ylab="sepal width")
legend('bottomright', legend = levels(iris$Species), col = c("light blue", "pink", "light green"), pch=8)
polygon(sepalL, sepalW)
```
</body>
