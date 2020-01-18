iris #Looking at the whole data set
SepL <- iris$Sepal.Length #Naming a column something easier to grab. Also taking Sepal Length data out of the larger data set, so I can impliment it elsewhere
Sp <- iris$Species #same as above.
plot(Sp, SepL) #Here I am making sure that plot works and seeing what the data looks like. I thought it would be most interesting to look at a character vs. a numeric value. Especially when looking at biological data, it is fun to look at morphological differences across species
plot(Sp, SepL, cex=2, pch=19, col="maroon") #Here I am adding to the plot above. I added color to the plot, chose a style for the one outlier point, and increased the size of the points. This part is different than the examples given in iris stub because only just color was an added feature to the example plots. I also tried to add a fun color. 
plot(Sp, SepL, xlab= "Sepal Length", ylab= "Species",cex=2, pch=19, col="maroon") #Here I add x and y labels. Deviating even further from the iris stub example. I am trying to replicate a plot that I would use in my research. In other words, I am testing out R skills/coding that I can impliment later in my academic career. Lastly, we had not tried a box plot yet and I was eager to try.
plot(iris$Species, iris$Sepal.Length, main="Plants Are Interesting", xlab= "Sepal Length", ylab= "Species",cex=2, pch=19, col="maroon") #Here I add a main title as well. 
plot(Sp, SepL, main="Plants Are Intruiging", ylab= "Sepal Length", xlab= "Species",cex=2, pch=19, col="maroon") #Here I am seeing if I can make the same plot as above but in a more concise way. It worked!
Sp #Here I wanted to try making the species different colors on a scatter plot
color = rep("red", 150) #All of the below are skills we learned on Thursday, but not on iris stub. However, I still tried to take what we learned in class and try out some new skills. I used the same functions to reach the scatterplot...I created 150 red characters. I made 150 to match the dataset that also has 150 numbers/characters
color #checking my work
color[Sp=="setosa"]<-"maroon" #Here,I used logicals to find Setosa and make those maroon.
color #checking my work
unique(Sp) #I used this function to find the remaining species.
color[Sp=="versicolor"]<-"pink" #Here I turned versicolor "pink"
color #checking my work
plot(iris$Petal.Length, SepL, main="Shades of Pink", ylab="Sepal Length", xlab="Petal Length", col=color, cex=2, pch=8) #plotted a multi-color scatter plot with labels and a title! I found different symbols for the points as well.